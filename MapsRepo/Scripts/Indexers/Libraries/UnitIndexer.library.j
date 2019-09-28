library UnitIndexer initializer ini requires UnitSelector, DataStructures
    public struct UnitData
        private unit u

        private boolean changingAiOrder = false
        private boolean aiOrderSet = false
        private string aiOrder = ""
        private string aiOrderType = ""
        private real aiOrderX = 0.00
        private real aiOrderY = 0.00

        public static method create takes unit u returns thistype
            local thistype new = .allocate()
            set new.u = u
            return new
        endmethod

        public method isChangingAiOrder takes nothing returns boolean
            return changingAiOrder
        endmethod

        public method isAiOrderSet takes nothing returns boolean
            return aiOrderSet
        endmethod

        public method freeAiOrder takes nothing returns nothing
            set aiOrderSet = false
        endmethod

        public method setAiOrderCoords takes string order, real x, real y returns nothing
            set aiOrderType = "coords"
            set aiOrderSet = true
            set aiOrder = order
            set aiOrderX = x
            set aiOrderY = y
            set changingAiOrder = true
            debug call BJDebugMsg("setAiOrderCoords()")
            call IssuePointOrder(u, aiOrder, aiOrderX, aiOrderY)
            set changingAiOrder = false
        endmethod

        public method aiDoReorder takes nothing returns nothing
            if aiOrderType == "coords" then
                call setAiOrderCoords(aiOrder, aiOrderX, aiOrderY)
            endif
        endmethod
    endstruct

    globals 
        private DataStructures_UnitSet allUnitsSet
        private UnitData array unitDatas
        private trigger onInit
        private trigger onEnter
        private trigger onDeath
        private trigger aiReorder
        private trigger periodicAiReorder
    endglobals

    private function registerUnit takes unit u returns nothing
        local UnitData unitData = UnitData.create(u)
        set unitDatas[unitData] = unitData
        call SetUnitUserData(u, unitData)
        call allUnitsSet.add(u)

        debug call BJDebugMsg("Registered unit: " + GetUnitName(u) + " #" + I2S(GetUnitUserData(u)))
    endfunction

    public function getUnitData takes unit u returns UnitData
        return unitDatas[GetUnitUserData(u)]
    endfunction

    private function unregisterUnit takes unit u returns nothing
        call getUnitData(u).destroy()
        call allUnitsSet.remove(u)
        debug call BJDebugMsg("Unregistered unit: " + GetUnitName(u) + " #" + I2S(GetUnitUserData(u)))
    endfunction

    private function onInitActions takes nothing returns boolean
        local rect r = GetWorldBounds()
        local DataStructures_UnitSet unitSet = UnitSelector_inRect(r, 0)
        local unit u 
        
        call unitSet.loopBegin()
        loop
            exitwhen unitSet.loopEnd()
            set u = unitSet.loopGetNext()
            call registerUnit(u)
        endloop

        call RemoveRect(r)
        set r = null
        set u = null

        call TriggerClearConditions(GetTriggeringTrigger())
        call DestroyTrigger(GetTriggeringTrigger())

        return false
    endfunction

    private function onDeathActions takes nothing returns boolean
        call unregisterUnit(GetTriggerUnit())
        return false
    endfunction

    private function onEnterActions takes nothing returns boolean
        call registerUnit(GetEnteringUnit())
        return false
    endfunction

    private function aiReorderActions takes nothing returns nothing
        local UnitData unitData = getUnitData(GetOrderedUnit())

        debug call BJDebugMsg("Reorder actions called.")

        if not(unitData.isChangingAiOrder()) and unitData.isAiOrderSet() then
            debug call BJDebugMsg("Reordering unit...")
            call unitData.aiDoReorder()
        endif
    endfunction

    private function periodicAiReorderActions takes nothing returns boolean
        local unit u
        local UnitData unitData

        call allUnitsSet.loopBegin()
        loop
            exitwhen allUnitsSet.loopEnd()
            set u = allUnitsSet.loopGetNext()
            set unitData = getUnitData(u)
            if unitData.isAiOrderSet() then
                call unitData.aiDoReorder()
            endif
        endloop 

        set u = null
        return false
    endfunction

    private function ini takes nothing returns nothing
        set allUnitsSet = DataStructures_UnitSet.create()

        set onInit = CreateTrigger()
        call TriggerAddCondition(onInit, Condition(function onInitActions))
        call TriggerRegisterTimerEvent(onInit, 0.00, false)

        set onEnter = CreateTrigger()
        call TriggerAddCondition(onEnter, Condition(function onEnterActions))
        call TriggerRegisterEnterRectSimple(onEnter, GetWorldBounds())

        set onDeath = CreateTrigger()
        call TriggerAddCondition(onDeath, Condition(function onDeathActions))
        call TriggerRegisterAnyUnitEventBJ(onDeath, EVENT_PLAYER_UNIT_DEATH)

        set aiReorder = CreateTrigger()
        call TriggerAddAction(aiReorder, function aiReorderActions)
        call TriggerRegisterAnyUnitEventBJ(aiReorder, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
        call TriggerRegisterAnyUnitEventBJ(aiReorder, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
        call TriggerRegisterAnyUnitEventBJ(aiReorder, EVENT_PLAYER_UNIT_ISSUED_ORDER)

        set periodicAiReorder = CreateTrigger()
        call TriggerAddCondition(periodicAiReorder, Condition(function periodicAiReorderActions))
        call TriggerRegisterTimerEvent(periodicAiReorder, 25.00, true)
    endfunction

    hook RemoveUnit unregisterUnit
endlibrary

