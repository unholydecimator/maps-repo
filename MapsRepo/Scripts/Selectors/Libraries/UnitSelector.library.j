library UnitSelector initializer ini requires DataStructures
    public function interface Filter takes nothing returns boolean

    globals
        private Filter currentFilter
        private boolexpr addFilter
        private DataStructures_UnitSet newUnitSet
    endglobals

    public function ofType takes string unitname, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsOfType(g, unitname, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function ofTypeCounted takes string unitname, integer count, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsOfTypeCounted(g, unitname, addFilter, count)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function ofPlayer takes player p, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsOfPlayer(g, p, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function ofPlayerSelected takes player p, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsSelected(g, p, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRect takes rect r, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRect(g, r, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRectCounted takes rect r, integer count, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRectCounted(g, r, addFilter, count)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRange takes real x, real y, real radius, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRange(g, x, y, radius, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRangeCounted takes real x, real y, real radius, integer count, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRangeCounted(g, x, y, radius, addFilter, count)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRangeOfLoc takes location loc, real radius, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRangeOfLoc(g, loc, radius, addFilter)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    public function inRangeOfLocCounted takes location loc, real radius, integer count, Filter filter returns DataStructures_UnitSet
        local group g = CreateGroup()

        set newUnitSet = DataStructures_UnitSet.create()
        set currentFilter = filter

        call GroupEnumUnitsInRangeOfLocCounted(g, loc, radius, addFilter, count)

        call DestroyGroup(g)
        set g = null

        return newUnitSet
    endfunction

    private function funcAddFilter takes nothing returns boolean
        local boolean result = true

        if not(currentFilter == 0) then
            set result = currentFilter.evaluate()
        endif

        if result then
            call newUnitSet.add(GetFilterUnit())
        endif

        return false
    endfunction

    private function ini takes nothing returns nothing
        set addFilter = Condition(function funcAddFilter)
    endfunction
endlibrary