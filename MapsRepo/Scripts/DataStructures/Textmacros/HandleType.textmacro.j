//! textmacro HandleTypeArray takes Type, type
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
        return HaveSavedHandle(arrayTable, getTableParentId(), i)
    endmethod

    public stub method getAtIndex takes integer i returns $type$
        return Load$Type$Handle(arrayTable, getTableParentId(), i)
    endmethod

    public stub method setAtIndex takes integer i, $type$ value returns nothing
        if (not haveAtIndex(i)) then
            set count = count + 1
        endif

        call Save$Type$Handle(arrayTable, getTableParentId(), i, value)
    endmethod

    public stub method removeAtIndex takes integer i returns nothing
        if (haveAtIndex(i)) then
            set count = count - 1
            call RemoveSavedHandle(arrayTable, getTableParentId(), i)
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

public struct $Type$Set
    private $Type$Array handles
    private IntegerArray keyIndices
    private IntegerVector keys
    private integer curLoopIndex

    public static method create takes nothing returns thistype
        local thistype new = .allocate()
        set new.handles = $Type$Array.create()
        set new.keyIndices = IntegerArray.create()
        set new.keys = IntegerVector.create()
        return new
    endmethod

    public method flush takes nothing returns nothing
        call handles.flush()
        call keyIndices.flush()
        call keys.flush()
    endmethod

    public method getCount takes nothing returns integer
        return handles.getCount()
    endmethod

    public method have takes $type$ value returns boolean
        if (value == null) then 
            return false
        endif
        return handles.haveAtIndex(GetHandleId(value))
    endmethod

    public method add takes $type$ value returns nothing
        local integer key
        local integer keyIndex

        if (value == null) then
            debug call BJDebugMsg("Error: Illegal add, cannot be null, type: " + "$Type$Set.")
            return
        endif

        set key = GetHandleId(value)
        set keyIndex = keys.getCount()

        if (have(value)) then
            debug call BJDebugMsg("Error: Illegal add, already has $type$ with handleId: " + I2S(key) + ", type: " + "$Type$Set.")
            return
        endif

        // add the new value to the handles array at position key
        set handles[key] = value
        // set the index in the key vector at position key
        set keyIndices[key] = keyIndex
        // push the new key to the keys vector
        call keys.push(key)
    endmethod

    public method remove takes $type$ value returns nothing
        local integer removeKey
        local integer removeKeyIndex
        local integer lastKeyIndex
        local integer lastKey

        if (value == null) then
            debug call BJDebugMsg("Error: Illegal remove, cannot be null, type: " + "$Type$Set.")
            return 
        endif

        set removeKey = GetHandleId(value)
        set removeKeyIndex = keyIndices[removeKey]
        set lastKeyIndex = keys.getCount() - 1
        set lastKey = keys[lastKeyIndex]

        if (not(have(value))) then
            debug call BJDebugMsg("Error: Illegal remove, doesn't have $type$ with handleId: " + I2S(removeKey) + ", type: " + "$Type$Set.")
            return
        endif

        // first, remove handle and it's key index 
        call handles.removeAtIndex(removeKey)
        call keyIndices.removeAtIndex(removeKey)

        // we are moving the lastKey, from its current position in the key vector -> to the position of they key of the handle we just removed
        set keys[removeKeyIndex] = lastKey
        // we need to update the key in the keyIndices array -> to point to the removed handle's key index
        set keyIndices[lastKey] = removeKeyIndex
        // we can now pop the last value in the key vector, since it has been moved
        call keys.pop()
    endmethod

    public method first takes nothing returns $type$
        if getCount() == 0 then
            return null
        endif

        return handles[keys[0]]
    endmethod

    public method random takes nothing returns $type$
        if getCount() == 0 then
            return null
        endif

        return handles[keys[GetRandomInt(0, getCount() - 1)]]
    endmethod

    public method loopBegin takes nothing returns nothing
        set curLoopIndex = 0
    endmethod

    public method loopEnd takes nothing returns boolean
        return curLoopIndex == keys.getCount()
    endmethod

    public method loopGetNext takes nothing returns $type$
        local integer ind = curLoopIndex
        set curLoopIndex = curLoopIndex + 1
        return handles[keys[ind]]
    endmethod

    private method onDestroy takes nothing returns nothing
        call flush()
        call handles.destroy()
        call keyIndices.destroy()
        call keys.destroy()
    endmethod
endstruct
//! endtextmacro