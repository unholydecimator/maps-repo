//! textmacro StructTypeVector takes Type
public struct $Type$Vector extends IDataStructure
    implement DataStructureMethods

    public boolean wantDestroy = true
    private IntegerVector innerVector

    public static method create takes nothing returns thistype
	local thistype new = .allocate()
	set new.innerVector = IntegerVector.create()
        return new
    endmethod

    public method getCount takes nothing returns integer
        return innerVector.getCount()
    endmethod

    public method flush takes nothing returns nothing
        local integer i = 0
        local $Type$ inst

        if wantDestroy then
            loop
                exitwhen i == getCount()

                set inst = innerVector[i]
                call inst.destroy()

                set i = i + 1
            endloop
        endif

        call innerVector.flush()
    endmethod

    public method haveAtIndex takes integer i returns boolean
        return innerVector.haveAtIndex(i)
    endmethod

    public method getAtIndex takes integer i returns $Type$
        if (haveAtIndex(i)) then
            return innerVector.getAtIndex(i)
        endif

        debug call BJDebugMsg("Error: Illegal access at index: " + I2S(i) + ", type: " + "$Type$Vector.")
        return innerVector.getAtIndex(0)
    endmethod

    public method setAtIndex takes integer i, $Type$ value returns nothing
        if (not haveAtIndex(i)) then
            debug call BJDebugMsg("Error: Illegal mutatation at index: " + I2S(i) + ", type: " + "$Type$Vector.")
            return
        endif

        call innerVector.setAtIndex(i, value)
    endmethod

    public method removeAtIndex takes integer i returns nothing
        if (haveAtIndex(i)) then
            call innerVector.removeAtIndex(i)
        debug else
            debug call BJDebugMsg("Error: Illegal element removal at index: " + I2S(i) + ", type: " + "$Type$Vector.")
        endif
    endmethod

    public method push takes $Type$ value returns nothing
        call innerVector.push(value)
    endmethod

    public method pop takes nothing returns nothing
        call innerVector.pop()
    endmethod

    public method operator [] takes integer i returns $Type$
        return getAtIndex(i)
    endmethod

    public method operator []= takes integer i, $Type$ value returns nothing
        call setAtIndex(i, value)
    endmethod

    private method onDestroy takes nothing returns nothing
        call flush()
        call innerVector.destroy()
    endmethod
endstruct
//! endtextmacro