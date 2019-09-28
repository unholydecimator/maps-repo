library Ai initializer ini requires AttackNodes, DataStructures, UnitSelector, Rect, Return
    globals
        private constant integer PLAYER_INDEX = 10
        private constant player p = Player(PLAYER_INDEX)
        private constant real ATTACK_SCAN_RADIUS = 300.00

        private AttackNodes_NodeSet nodeSet
        private AttackNodes_Node globalNode

        // attackers
        private boolean array run 
        private boolean array shouldOrderAttack
        private integer attackCount = 0
        private DataStructures_UnitSet array attackUnitSet
        private AttackNodes_Node array attackCurrentNode
        private real array targetX
        private real array targetY
        private rect array scanRect
    endglobals

    private function filterIsLivingEnemy takes nothing returns boolean
        return IsUnitAliveBJ(GetFilterUnit()) and IsUnitEnemy(GetFilterUnit(), p) 
    endfunction

    public function addAttackUnitSet takes DataStructures_UnitSet unitSet returns nothing
        set attackUnitSet[attackCount] = unitSet
        set attackCount = attackCount + 1
    endfunction

    public function attachNodeSet takes AttackNodes_NodeSet aNodeSet returns nothing
        set nodeSet = aNodeSet
    endfunction

    public function shouldResolveTarget takes integer i returns boolean 
        local DataStructures_UnitSet unitSet = UnitSelector_inRect(scanRect[i], UnitSelector_Filter.filterIsLivingEnemy)
        local boolean result = unitSet.getCount() == 0
        debug call BJDebugMsg("shouldResolveTarget(" + I2S(i) + ")")
        debug if not(result) then 
            debug call unitSet.loopBegin()
            debug loop
                debug call BJDebugMsg("  ...Found '" + GetUnitName(unitSet.loopGetNext()) + "'")
                debug exitwhen true
            debug endloop
        debug endif
        call unitSet.destroy()

        if result then
            debug call BJDebugMsg("  ...returned true")
            set shouldOrderAttack[i] = true
        debug else
            debug call BJDebugMsg("  ...returned false")
        endif

        return result
    endfunction

    public function resolveTarget takes real x, real y, integer i returns nothing
        local boolean global = false
        local unit u = null

        debug call BJDebugMsg("resolveTarget(" + R2S(x) + ", " + R2S(y) + ", " + I2S(i) + ")")

        // destroy the old rect if needed
        if (not(scanRect[i] == null)) then
            debug call BJDebugMsg("  ...destroying old rect")
            call RemoveRect(scanRect[i])
        endif

        if (not(attackCurrentNode[i] == 0)) then
            debug call BJDebugMsg("  ...set to nearest target")
            set u = attackCurrentNode[i].getNearestTarget(x, y, UnitSelector_Filter.filterIsLivingEnemy)
        else
            debug call BJDebugMsg("  ...node is null, setting global to true")
            set global = true
        endif

        // no target found
        if u == null and not global then
            debug call BJDebugMsg("  ...no target found, switching node")
            loop
                exitwhen not(u == null)
                set attackCurrentNode[i] = attackCurrentNode[i].nextLink
                if (attackCurrentNode[i] == 0) then
                    debug call BJDebugMsg("  ...could not resolve node with target, global target enabled")
                    set global = true
                    exitwhen true
                endif
                set u = attackCurrentNode[i].getNearestTarget(x, y, UnitSelector_Filter.filterIsLivingEnemy)
            endloop
        endif

        // nearest target
        if global then
            debug call BJDebugMsg("  ...begin target search")
            set u = globalNode.getNearestTarget(x, y, UnitSelector_Filter.filterIsLivingEnemy)
            debug call BJDebugMsg("  ...end target search")
        endif

        // if unit is still null there are no more targets, stop running the ai
        if u == null then
            debug call BJDebugMsg("  ...no target could be resolved, setting ai run to false.")
            set run[i] = false
            set u = null 
            return
        endif

        set targetX[i] = GetUnitX(u)
        set targetY[i] = GetUnitY(u)
        set scanRect[i] = Rect_fromCircle(targetX[i], targetY[i], ATTACK_SCAN_RADIUS)

        debug call BJDebugMsg("  ...target was ultimately resolved to a '" + GetUnitName(u) + "', at (" + R2S(targetX[i]) + ", " + R2S(targetY[i]) + ")")

        set u = null
    endfunction

    public function forceOrderAttack takes integer i returns nothing
        debug call BJDebugMsg("Forcing attack order for " + I2S(i))
        set shouldOrderAttack[i] = true
    endfunction

    public function shouldAiOrderAttack takes integer i returns boolean
        debug call BJDebugMsg("shouldAiOrderAttack(" + I2S(i) + ")")
        debug if shouldOrderAttack[i] then 
            debug call BJDebugMsg("  ...returned true")
        debug else
            debug call BJDebugMsg("  ...returned false")
        debug endif
        return shouldOrderAttack[i]
    endfunction

    public function orderAttack takes integer i returns nothing
        local unit u

        debug call BJDebugMsg("orderAttack(" + I2S(i) + ")")

        call attackUnitSet[i].loopBegin()
        loop
            exitwhen attackUnitSet[i].loopEnd()
            set u = attackUnitSet[i].loopGetNext()
            call IssuePointOrder(u, "attack", targetX[i], targetY[i])
        endloop

        debug call BJDebugMsg("  ...attack loop end.")

        set shouldOrderAttack[i] = false

        set u = null
    endfunction

    public function shouldRun takes integer i returns boolean
        debug call BJDebugMsg("shouldRun(" + I2S(i) + ")")
        debug if run[i] then 
            debug call BJDebugMsg("  ...returned true")
        debug else
            debug call BJDebugMsg("  ...returned false")
        debug endif
        return run[i]
    endfunction

    public function getTargetX takes integer i returns real
        debug call BJDebugMsg("getTargetX(" + I2S(i) + ")")
        debug call BJDebugMsg("  ... returned " + R2S(targetX[i]))
        return targetX[i]
    endfunction

    public function getTargetY takes integer i returns real
        debug call BJDebugMsg("getTargetY(" + I2S(i) + ")")
        debug call BJDebugMsg("  ... returned " + R2S(targetY[i]))
        return targetY[i]
    endfunction

    public function startSingle takes integer i returns nothing
        local unit u
        local real x 
        local real y

        debug call BJDebugMsg("startSingle(" + I2S(i) + ")")

        set run[i] = true
        set scanRect[i] = null

        // get first unit from attack unit set and get coords
        set u = attackUnitSet[i].first()
        set x = GetUnitX(u)
        set y = GetUnitY(u)

        debug call BJDebugMsg("  ...resolving nearest node from  '" + GetUnitName(u) + "', at (" + R2S(x) + ", " + R2S(y) + ")")

        // resolve initial node and initial target
        set attackCurrentNode[i] = nodeSet.nearestNode(0, x, y)
        call resolveTarget(x, y, i)
        call orderAttack(i)

        set u = null
    endfunction

    public function startAll takes nothing returns nothing
        local integer i = 0
        loop
            exitwhen i == attackCount
            call startSingle(i)
            set i = i + 1
        endloop
    endfunction

    private function ini takes nothing returns nothing
        set globalNode = AttackNodes_Node.create()
        call globalNode.addRect(GetPlayableMapRect())
    endfunction
endlibrary