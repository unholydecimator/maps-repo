library AttackNodes requires DataStructures, UnitSelector, Math, Return
    globals
        private constant integer RECT_ARRAY_SIZE = 15
    endglobals

    public struct Node
        private rect array rects[RECT_ARRAY_SIZE]
        private integer rectsCount = 0
        public boolean wantDestroy = true
        private rect composite = null
        private rect groupMeet = null
        private integer compositeLastCalculated = 0
        public Node nextLink = 0

        public static method create takes nothing returns thistype
            return .allocate()
        endmethod

        public method addRect takes rect r returns nothing
            set rects[rectsCount] = r 
            set rectsCount = rectsCount + 1
        endmethod

        public method shouldGroupMeet takes nothing returns boolean
            return not(groupMeet == null)
        endmethod

        public method setGroupMeet takes rect r returns nothing
            set groupMeet = r
        endmethod

        public method getGroupMeetX takes nothing returns real
            return GetRectCenterX(groupMeet)
        endmethod

        public method getGroupMeetY takes nothing returns real
            return GetRectCenterY(groupMeet)
        endmethod

        public method isGroupReady takes DataStructures_UnitSet unitSet returns boolean
            local integer i = 0
            local integer loopEnd = unitSet.getCount()
            local unit u

            call unitSet.loopBegin()
            loop
                exitwhen unitSet.loopEnd()
                set u = unitSet.loopGetNext()

                if not(RectContainsUnit(groupMeet, u)) then
                    set u = null
                    return false
                endif
            endloop

            set u = null
            return true
        endmethod

        private method compositeNeedsCalculated takes nothing returns boolean
            return not(compositeLastCalculated == rectsCount)
        endmethod

        private method calculateComposite takes nothing returns nothing
            local real minX = -1
            local real minY = -1
            local real maxX = -1
            local real maxY = -1
            local real tmpMinX
            local real tmpMinY
            local real tmpMaxX
            local real tmpMaxY
            local integer i = 0

            set compositeLastCalculated = rectsCount

            if not(composite == null) then
                call RemoveRect(composite)
            endif

            loop
                exitwhen i == rectsCount

                set tmpMinX = GetRectMinX(rects[i])
                set tmpMinY = GetRectMinY(rects[i])
                set tmpMaxX = GetRectMaxX(rects[i])
                set tmpMaxY = GetRectMaxY(rects[i])

                if minX == -1 or minX > tmpMinX then
                    set minX = tmpMinX
                endif

                if minY == -1 or minY > tmpMinY then
                    set minY = tmpMinY
                endif

                if maxX == -1 or maxX < tmpMaxX then
                    set maxX = tmpMaxX
                endif

                if maxY == -1 or maxY < tmpMaxY then
                    set maxY = tmpMaxY
                endif

                set i = i + 1
            endloop

            set composite = Rect(minX, minY, maxX, maxY)
        endmethod

        public method getCenterX takes nothing returns real
            if rectsCount == 0 then
                return -1.0
            endif
            if compositeNeedsCalculated() then
                call calculateComposite()
            endif
            return GetRectCenterX(composite)
        endmethod

        public method getCenterY takes nothing returns real
            if rectsCount == 0 then
            	return -1.0
	    endif
            if compositeNeedsCalculated() then
                call calculateComposite()
            endif
            return GetRectCenterY(composite)
        endmethod

        public method getTarget takes boolexpr func returns unit
            local integer i = 0
            local group units

            set Return_rUnit = null
            loop
                exitwhen i == rectsCount
                set units = CreateGroup()
                call GroupEnumUnitsInRect(units, rects[i], func)

                if CountUnitsInGroup(units) > 0 then
                    set Return_rUnit = FirstOfGroup(units)
                    call DestroyGroup(units)
                    exitwhen true
                endif

                call DestroyGroup(units)

                set i = i + 1
            endloop

            set units = null

            return Return_rUnit
        endmethod

        public method getNearestTarget takes real x, real y, UnitSelector_Filter filter returns unit
            local integer i = 0
            local DataStructures_UnitSet unitSet
            local unit u
            local real dist
            local real tmpDist

            set Return_rUnit = null

            // search for units in each rect
            loop
                exitwhen i == rectsCount
                set unitSet = UnitSelector_inRect(rects[i], filter)

                // no point in running the loop if there are no units
                if unitSet.getCount() > 0 then

                    // if the return unit is null, we will just set it to the first unit we find
                    if Return_rUnit == null then
                        set Return_rUnit = unitSet.first()
                        set dist = Math_DistanceBetweenCoords(x, y, GetUnitX(Return_rUnit), GetUnitY(Return_rUnit))
                    endif

                    // loop through the unit set
                    call unitSet.loopBegin()
                    loop
                        exitwhen unitSet.loopEnd()
                        set u = unitSet.loopGetNext()
                        set tmpDist = Math_DistanceBetweenCoords(x, y, GetUnitX(u), GetUnitY(u))

                        // distance of the current unit is less than the return unit, set it as the return unit
                        if tmpDist < dist then
                            set Return_rUnit = u
                            set dist = tmpDist
                        endif
                    endloop
                endif

                call unitSet.destroy()

                set i = i + 1
            endloop

            set u = null

            return Return_rUnit
        endmethod

        private method onDestroy takes nothing returns nothing
            local integer i = 0

            if wantDestroy then
                loop
                    exitwhen i == rectsCount
                    call RemoveRect(rects[i])
                    set i = i + 1
                endloop
            endif

            if not(composite == null) then
                call RemoveRect(composite)
            endif

            if not(groupMeet == null) then
                call RemoveRect(groupMeet)
            endif
        endmethod
    endstruct

    public struct NodeSet
        private DataStructures_AttackNodes_NodeVectorVector nodes

        public static method create takes nothing returns thistype
            local thistype new = .allocate()
	        set new.nodes = DataStructures_AttackNodes_NodeVectorVector.create()
	        return new
        endmethod

        public method nodeCount takes nothing returns integer
            return nodes.getCount()
        endmethod

	    public method addNode takes integer level, Node node returns nothing
            local integer i = 0
            local DataStructures_AttackNodes_NodeVector nodeLevel
            if not(nodes.haveAtIndex(level)) then
                loop
                    exitwhen nodes.haveAtIndex(level)
                    call nodes.push(DataStructures_AttackNodes_NodeVector.create())
                endloop
            endif

            set nodeLevel = nodes[level]
            call nodeLevel.push(node)
        endmethod

        public method clearLinks takes nothing returns nothing
            local integer level = 0
            local integer loopEnd0 = nodeCount()
            local integer ind
            local integer loopEnd1
            local DataStructures_AttackNodes_NodeVector nodeLevel

            loop
                exitwhen level == loopEnd0
                set nodeLevel = nodes[level]
                set ind = 0
                set loopEnd1 = nodeLevel.getCount()

                loop
                    exitwhen ind == loopEnd1

                    set nodeLevel[ind].nextLink = 0

                    set ind = ind + 1 
                endloop

                set level = level + 1
            endloop
        endmethod

        // calculate the node links based on their distances from one another
        public method linkNodes takes nothing returns nothing
            local integer level = 0
            local integer nextLevel
            local integer loop0End = nodeCount() - 1

            local boolean forwardLink

            local real linkingX
            local real linkingY
            local integer linkingLevel
            local DataStructures_AttackNodes_NodeVector linkingVector
            local integer linkingLoopInd
            local integer linkingLoopEnd
            local Node linkingNode

            local real linkedX
            local real linkedY
            local integer linkedLevel
            local DataStructures_AttackNodes_NodeVector linkedVector
            local integer linkedLoopInd
            local integer linkedLoopEnd
            local Node linkedNode
            local Node chosenNode

            local real tmpDist
            local real linkDist

            loop
                exitwhen level == loop0End
                set nextLevel = level + 1
                
                // determine which of the two levels has fewer nodes.
                // the one with fewer will do the linking
                // if they are the same, we don't really care, so then the next level is simply picked in this case
                if (nodes[level].getCount() > nodes[nextLevel].getCount()) then
                    set linkingLevel = level
                    set linkedLevel = nextLevel
                    set forwardLink = true
                else
                    set linkingLevel = nextLevel
                    set linkedLevel = level
                    set forwardLink = false
                endif

                // fetch the vectors, and set the inner loop ends
                set linkingVector = nodes[linkingLevel]
                set linkedVector = nodes[linkedLevel]
                set linkingLoopEnd = linkingVector.getCount()
                set linkedLoopEnd = linkedVector.getCount()

                set linkingLoopInd = 0

                // we will link the nodes together based on shortest distances
                loop
                    exitwhen linkingLoopInd == linkingLoopEnd

                    set linkingNode = linkingVector[linkingLoopInd]
                    set linkingX = linkingNode.getCenterX()
                    set linkingY = linkingNode.getCenterY()
                    set linkedLoopInd = 0

                    // find node with the shortest distance
                    loop
                        exitwhen linkedLoopInd == linkedLoopEnd

                        set linkedNode = linkedVector[linkedLoopInd]
                        set linkedX = linkedNode.getCenterX()
                        set linkedY = linkedNode.getCenterY()
                        set tmpDist = Math_DistanceBetweenCoords(linkingX, linkingY, linkedX, linkedY)

                        if linkedLoopInd == 0 then
                            set chosenNode = linkedNode
                            set linkDist = tmpDist
                        elseif tmpDist < linkDist then
                            set chosenNode = linkedNode
                            set linkDist = tmpDist
                        endif

                        set linkedLoopInd = linkedLoopInd + 1
                    endloop

                    // link the nodes
                    if forwardLink then
                        set linkingNode.nextLink = chosenNode
                    else
                        set chosenNode.nextLink = linkingNode
                    endif

                    set linkingLoopInd = linkingLoopInd + 1
                endloop

                set level = nextLevel
            endloop
        endmethod

        public method getBackLinks takes integer level, Node node returns DataStructures_AttackNodes_NodeVector
            local DataStructures_AttackNodes_NodeVector resultVector = DataStructures_AttackNodes_NodeVector.create()
            local DataStructures_AttackNodes_NodeVector nodeLevel = nodes[level]
            local integer loopEnd = nodeLevel.getCount()
            local integer ind = 0

            loop
                exitwhen ind == loopEnd

                if nodeLevel[ind].nextLink == node then
                    call resultVector.push(nodeLevel[ind])
                endif

                set ind = ind + 1
            endloop

            set resultVector.wantDestroy = false

            return resultVector
        endmethod

        public method nearestNode takes integer level, real x, real y returns Node
            local DataStructures_AttackNodes_NodeVector nodeLevel = nodes[level]
            local integer i = 0
            local integer loopEnd = nodeLevel.getCount()
            local Node current
            local Node nearest
            local real testX
            local real testY
            local real distance
            local real tmpDist

            loop
                exitwhen i == loopEnd

                set current = nodeLevel[i]
                set testX = current.getCenterX()
                set testY = current.getCenterY()
                set tmpDist = Math_DistanceBetweenCoords(x, y, testX, testY)

                if i == 0 then
                    set nearest = current
                    set distance = tmpDist
                elseif tmpDist < distance then
                    set nearest = current
                    set distance = tmpDist
                endif

                set i = i + 1
            endloop

            return nearest
        endmethod

        private method onDestroy takes nothing returns nothing
            call nodes.destroy()
        endmethod
    endstruct

endlibrary