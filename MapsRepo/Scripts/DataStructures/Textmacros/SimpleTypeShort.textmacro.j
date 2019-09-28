//! textmacro SimpleTypeArrayShort takes Type, TypeShort, type
public struct $Type$Array extends IDataStructure
    implement DataStructureMethods

    private integer count = 0

    public static method create takes nothing returns thistype
        return .allocate()
    endmethod

    public method getCount takes nothing returns integer
        return count
    endmethod

    public stub method flush takes nothing returns nothing
        set count = 0
        call FlushChildHashtable(arrayTable, getTableParentId())
    endmethod

    public stub method haveAtIndex takes integer i returns boolean
        return HaveSaved$Type$(arrayTable, getTableParentId(), i)
    endmethod

    public stub method getAtIndex takes integer i returns $type$
        return Load$TypeShort$(arrayTable, getTableParentId(), i)
    endmethod

    public stub method setAtIndex takes integer i, $type$ value returns nothing
        if (not haveAtIndex(i)) then
            set count = count + 1
        endif

        call Save$TypeShort$(arrayTable, getTableParentId(), i, value)
    endmethod

    public stub method removeAtIndex takes integer i returns nothing
        if (haveAtIndex(i)) then
            set count = count - 1
            call RemoveSaved$Type$(arrayTable, getTableParentId(), i)
        endif
    endmethod

    public stub method operator [] takes integer i returns $type$
        return getAtIndex(i)
    endmethod

    public stub method operator []= takes integer i, $type$ value returns nothing
        call setAtIndex(i, value)
    endmethod

    private method onDestroy takes nothing returns nothing
        call flush()
    endmethod
endstruct

public struct $Type$Vector extends $Type$Array
    public static method create takes nothing returns thistype
        return .allocate()
    endmethod

    public method getAtIndex takes integer i returns $type$
        if (haveAtIndex(i)) then
            return super.getAtIndex(i)
        endif

        debug call BJDebugMsg("Error: Illegal access at index: " + I2S(i) + ", type: " + "$Type$Vector.")
        return super.getAtIndex(0)
    endmethod

    public method setAtIndex takes integer i, $type$ value returns nothing
        if (not haveAtIndex(i)) then
            debug call BJDebugMsg("Error: Illegal mutatation at index: " + I2S(i) + ", type: " + "$Type$Vector.")
            return
        endif

        call super.setAtIndex(i, value)
    endmethod

    public method removeAtIndex takes integer i returns nothing
        local integer lastIndex = getCount() - 1
        local integer cur
        local integer next
        if (haveAtIndex(i)) then
            if not(i == lastIndex) then
                set cur = i
                set next = cur + 1
                loop
                    exitwhen cur == lastIndex // nothing to assign element at this index to

                    call setAtIndex(cur, getAtIndex(next))

                    set cur = cur + 1
                    set next = cur + 1
                endloop
            endif
            call pop()
        debug else
            debug call BJDebugMsg("Error: Illegal element removal at index: " + I2S(i) + ", type: " + "$Type$Vector.")
        endif
    endmethod

    public method push takes $type$ value returns nothing
        local integer index = getCount()
        call super.setAtIndex(index, value)
    endmethod

    public method pop takes nothing returns nothing
        local integer lastIndex = getCount() - 1
        call super.removeAtIndex(lastIndex)
    endmethod

    public method operator [] takes integer i returns $type$
        return getAtIndex(i)
    endmethod

    public method operator []= takes integer i, $type$ value returns nothing
        call setAtIndex(i, value)
    endmethod

    private method onDestroy takes nothing returns nothing
        call flush()
    endmethod
endstruct
//! endtextmacro
