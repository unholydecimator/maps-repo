library IntegerDataStructuresTests initializer ini requires DataStructures
    private function IntegerArrayTests takes nothing returns nothing
        local DataStructures_IntegerArray integerArray0 = DataStructures_IntegerArray.create()
        local DataStructures_IntegerArray integerArray1 = DataStructures_IntegerArray.create()
        local integer test = -2

        // test -2
        if (integerArray0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(integerArray0 == 0)'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test -1
        if (integerArray1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(integerArray1 == 0)'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 0
        if (not(integerArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.getCount() == 0'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 1
        if (not(integerArray1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.getCount() == 0'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        set integerArray0[0] = 1
        set integerArray0[1] = 2
        set integerArray0[2] = 3

        set integerArray1[0] = 4
        set integerArray1[1] = 5
        set integerArray1[2] = 6
        set integerArray1[4] = 10

        // test 2
        if (not(integerArray0[0] == 1)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0[0] == 1'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(integerArray0[1] == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0[1] == 2'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 4
        if (not(integerArray0[2] == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0[2] == 3'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 5
        if (not(integerArray1[0] == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1[0] == 4'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(integerArray1[1] == 5)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1[1] == 5'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(integerArray1[2] == 6)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1[2] == 6'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(integerArray1[4] == 10)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1[4] == 10'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(integerArray0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.getCount() == 3'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(integerArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.getCount() == 4'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(integerArray0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.haveAtIndex(0) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(integerArray0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.haveAtIndex(1) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(integerArray0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.haveAtIndex(2) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(integerArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(0) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(integerArray1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(1) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(integerArray1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(2) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(integerArray1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(3) == false'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(integerArray1.haveAtIndex(4) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(4) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        call integerArray0.removeAtIndex(0)

        // test 19
        if (not(integerArray0.haveAtIndex(0) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.haveAtIndex(0) == false'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(integerArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.haveAtIndex(0) == true'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 21
        if (not(integerArray0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.getCount() == 2'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(integerArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.getCount() == 4'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        call integerArray0.flush()

        // test 23
        if (not(integerArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray0.getCount() == 0'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(integerArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerArray1.getCount() == 4'" + ", in series " + "IntegerArrayTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call integerArray0.destroy()
        call integerArray1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "IntegerArrayTests")
    endfunction

    private function IntegerVectorTests takes nothing returns nothing
        local DataStructures_IntegerVector integerVector0 = DataStructures_IntegerVector.create()
        local DataStructures_IntegerVector integerVector1 = DataStructures_IntegerVector.create()
        local integer test = 0
        local integer value

        // test 0
        if (integerVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(integerVector0 == 0)'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (integerVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(integerVector1 == 0)'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(integerVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.getCount() == 0'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(integerVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.getCount() == 0'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set integerVector0[0] = 1
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(integerVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.getCount() == 0'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = integerVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call integerVector0.push(1)
        call integerVector0.push(2)
        call integerVector0.push(3)
        call integerVector1.push(4)
        call integerVector1.push(5)
        call integerVector1.push(6)
        call integerVector1.push(10)

        // test 5
        if (not(integerVector0[0] == 1)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0[0] == 1'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(integerVector0[1] == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0[1] == 2'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(integerVector0[2] == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0[2] == 3'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(integerVector1[0] == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[0] == 4'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(integerVector1[1] == 5)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[1] == 5'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(integerVector1[2] == 6)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[2] == 6'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(integerVector1[3] == 10)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[3] == 10'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(integerVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.getCount() == 3'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(integerVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.getCount() == 4'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(integerVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(0) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(integerVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(1) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(integerVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(2) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(integerVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(0) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(integerVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(1) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(integerVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(2) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(integerVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(3) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // 1, 2, 3 -> 1, 2
        call integerVector0.pop()

        // test 21
        if (not(integerVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(0) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(integerVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(1) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(integerVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.haveAtIndex(2) == false'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(integerVector0[0] == 1)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0[0] == 1'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(integerVector0[1] == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0[1] == 2'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // 4, 5, 6, 10 -> 4, 6, 10
        call integerVector1.removeAtIndex(1)

        // test 26
        if (not(integerVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(0) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(integerVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(1) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(integerVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(2) == true'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(integerVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.haveAtIndex(3) == false'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(integerVector1[0] == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[0] == 4'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(integerVector1[1] == 6)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[1] == 6'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(integerVector1[2] == 10)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1[2] == 10'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(integerVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.getCount() == 2'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(integerVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.getCount() == 3'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        call integerVector0.flush()

        // test 34
        if (not(integerVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector0.getCount() == 0'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(integerVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'integerVector1.getCount() == 3'" + ", in series " + "IntegerVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call integerVector0.destroy()
        call integerVector1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "IntegerVectorTests")
    endfunction

    private function runAll takes nothing returns boolean
        call IntegerArrayTests()
        call IntegerVectorTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary