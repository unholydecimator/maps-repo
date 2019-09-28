library DestructableSelector requires DataStructures
    public function interface Filter takes nothing returns boolean

    globals
        private Filter currentFilter
        private DataStructures_DestructableSet newDestructableSet
    endglobals

    private function addCallback takes nothing returns nothing
        local boolean result = true

        if not(currentFilter == 0) then
            set result = currentFilter.evaluate()
        endif

        if result then
            call newDestructableSet.add(GetEnumDestructable())
        endif
    endfunction

    public function inRect takes rect r, Filter filter returns DataStructures_DestructableSet
        local group g = CreateGroup()

        set newDestructableSet = DataStructures_DestructableSet.create()
        set currentFilter = filter

        call EnumDestructablesInRect(r, null, function addCallback)

        call DestroyGroup(g)
        set g = null

        return newDestructableSet
    endfunction
endlibrary