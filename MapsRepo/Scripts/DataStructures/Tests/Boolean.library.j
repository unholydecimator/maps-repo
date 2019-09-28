library BooleanDataStructuresTests initializer ini requires DataStructures
    private function BooleanArrayTests takes nothing returns nothing
        local DataStructures_BooleanArray booleanArray0 = DataStructures_BooleanArray.create()
        local DataStructures_BooleanArray booleanArray1 = DataStructures_BooleanArray.create()
        local integer test = 0

        // test 0
        if (booleanArray0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(booleanArray0 == 0)'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 1
        if (booleanArray1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(booleanArray1 == 0)'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(booleanArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.getCount() == 0'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(booleanArray1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.getCount() == 0'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        set booleanArray0[0] = true
        set booleanArray0[1] = true
        set booleanArray0[2] = false

        set booleanArray1[0] = true
        set booleanArray1[1] = true
        set booleanArray1[2] = false
        set booleanArray1[4] = false

        // test 4
        if (not(booleanArray0[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0[0] == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 5
        if (not(booleanArray0[1] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0[1] == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(booleanArray0[2] == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0[2] == false'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(booleanArray1[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1[0] == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(booleanArray1[1] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1[1] == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(booleanArray1[2] == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1[2] == false'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(booleanArray1[4] == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1[4] == false'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(booleanArray0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.getCount() == 3'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(booleanArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.getCount() == 4'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(booleanArray0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.haveAtIndex(0) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(booleanArray0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.haveAtIndex(1) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(booleanArray0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.haveAtIndex(2) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(booleanArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(0) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(booleanArray1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(1) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(booleanArray1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(2) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(booleanArray1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(3) == false'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(booleanArray1.haveAtIndex(4) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(4) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        call booleanArray0.removeAtIndex(0)

        // test 21
        if (not(booleanArray0.haveAtIndex(0) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.haveAtIndex(0) == false'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(booleanArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.haveAtIndex(0) == true'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(booleanArray0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.getCount() == 2'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(booleanArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.getCount() == 4'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        call booleanArray0.flush()

        // test 25
        if (not(booleanArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray0.getCount() == 0'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(booleanArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanArray1.getCount() == 4'" + ", in series " + "BooleanArrayTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call booleanArray0.destroy()
        call booleanArray1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "BooleanArrayTests")
    endfunction

    private function BooleanVectorTests takes nothing returns nothing
        local DataStructures_BooleanVector booleanVector0 = DataStructures_BooleanVector.create()
        local DataStructures_BooleanVector booleanVector1 = DataStructures_BooleanVector.create()
        local integer test = 0
        local boolean value

        // test 0
        if (booleanVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(booleanVector0 == 0)'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (booleanVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(booleanVector1 == 0)'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(booleanVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.getCount() == 0'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(booleanVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.getCount() == 0'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set booleanVector0[0] = true
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(booleanVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.getCount() == 0'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = booleanVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call booleanVector0.push(true)
        call booleanVector0.push(false)
        call booleanVector0.push(true)
        call booleanVector1.push(true)
        call booleanVector1.push(true)
        call booleanVector1.push(true)
        call booleanVector1.push(true)

        // test 5
        if (not(booleanVector0[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0[0] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(booleanVector0[1] == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0[1] == false'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(booleanVector0[2] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0[2] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(booleanVector1[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[0] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(booleanVector1[1] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[1] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(booleanVector1[2] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[2] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(booleanVector1[3] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[3] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(booleanVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.getCount() == 3'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(booleanVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.getCount() == 4'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(booleanVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(0) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(booleanVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(1) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(booleanVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(2) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(booleanVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(0) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(booleanVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(1) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(booleanVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(2) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(booleanVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(3) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // true, false, true -> true, false
        call booleanVector0.pop()

        // test 21
        if (not(booleanVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(0) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(booleanVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(1) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(booleanVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.haveAtIndex(2) == false'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(booleanVector0[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0[0] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(booleanVector0[1] == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0[1] == false'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // true, true, true, true -> true, true, true
        call booleanVector1.removeAtIndex(1)

        // test 26
        if (not(booleanVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(0) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(booleanVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(1) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(booleanVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(2) == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(booleanVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.haveAtIndex(3) == false'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(booleanVector1[0] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[0] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(booleanVector1[1] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[1] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(booleanVector1[2] == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1[2] == true'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(booleanVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.getCount() == 2'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(booleanVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.getCount() == 3'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        call booleanVector0.flush()

        // test 34
        if (not(booleanVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector0.getCount() == 0'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(booleanVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'booleanVector1.getCount() == 3'" + ", in series " + "BooleanVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call booleanVector0.destroy()
        call booleanVector1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "BooleanVectorTests")
    endfunction

    private function runAll takes nothing returns boolean
        call BooleanArrayTests()
        call BooleanVectorTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary