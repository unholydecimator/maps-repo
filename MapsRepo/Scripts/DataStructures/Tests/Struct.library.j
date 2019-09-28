library StructDataStructuresTests initializer ini requires DataStructures
    private struct Struct
    endstruct

    private function StructVectorTests takes nothing returns nothing
        local DataStructures_StructVector structVector0 = DataStructures_StructVector.create()
        local DataStructures_StructVector structVector1 = DataStructures_StructVector.create()
        local integer test = 0
        local Struct value

        // test 0
        if (structVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(structVector0 == 0)'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (structVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(structVector1 == 0)'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(structVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.getCount() == 0'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(structVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.getCount() == 0'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set structVector0[0] = 1
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(structVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.getCount() == 0'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = structVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call structVector0.push(Struct.create()) // 1
        call structVector0.push(Struct.create()) // 2
        call structVector0.push(Struct.create()) // 3
        call structVector1.push(Struct.create()) // 4
        call structVector1.push(Struct.create()) // 5
        call structVector1.push(Struct.create()) // 6
        call structVector1.push(Struct.create()) // 7

        // test 5
        if (not(structVector0[0] == 1)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0[0] == 1'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(structVector0[1] == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0[1] == 2'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(structVector0[2] == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0[2] == 3'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(structVector1[0] == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[0] == 4'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(structVector1[1] == 5)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[1] == 5'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(structVector1[2] == 6)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[2] == 6'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(structVector1[3] == 7)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[3] == 7'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(structVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.getCount() == 3'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(structVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.getCount() == 4'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(structVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(0) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(structVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(1) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(structVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(2) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(structVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(0) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(structVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(1) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(structVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(2) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(structVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(3) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // 1, 2, 3 -> 1, 2
        call structVector0[2].destroy()
        call structVector0.pop()

        // test 21
        if (not(structVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(0) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(structVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(1) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(structVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.haveAtIndex(2) == false'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(structVector0[0] == 1)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0[0] == 1'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(structVector0[1] == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0[1] == 2'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // 4, 5, 6, 7 -> 4, 6, 7
        call structVector1[1].destroy()
        call structVector1.removeAtIndex(1)

        // test 26
        if (not(structVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(0) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(structVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(1) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(structVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(2) == true'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(structVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.haveAtIndex(3) == false'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(structVector1[0] == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[0] == 4'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(structVector1[1] == 6)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[1] == 6'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(structVector1[2] == 7)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1[2] == 7'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(structVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.getCount() == 2'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(structVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.getCount() == 3'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        call structVector0.flush()

        // test 34
        if (not(structVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector0.getCount() == 0'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(structVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'structVector1.getCount() == 3'" + ", in series " + "StructVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call structVector0.destroy()
        call structVector1.destroy()

        call BJDebugMsg("Expecting struct double-free errors (x7):")
        set value = 1
        call value.destroy()
        set value = 2
        call value.destroy()
        set value = 3
        call value.destroy()
        set value = 4
        call value.destroy()
        set value = 5
        call value.destroy()
        set value = 6
        call value.destroy()
        set value = 7
        call value.destroy()
        call BJDebugMsg("No longer expecting struct double-free errors:")

        // tests passed
        call BJDebugMsg("All tests passed in series " + "StructVectorTests")
    endfunction

    private function runAll takes nothing returns boolean
        call StructVectorTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary