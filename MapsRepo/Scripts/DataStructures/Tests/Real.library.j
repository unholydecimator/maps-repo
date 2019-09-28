library RealDataStructuresTests initializer ini requires DataStructures
    private function RealArrayTests takes nothing returns nothing
        local DataStructures_RealArray realArray0 = DataStructures_RealArray.create()
        local DataStructures_RealArray realArray1 = DataStructures_RealArray.create()
        local integer test = -2

        // test -2
        if (realArray0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(realArray0 == 0)'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test -1
        if (realArray1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(realArray1 == 0)'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 0
        if (not(realArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.getCount() == 0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 1
        if (not(realArray1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.getCount() == 0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        set realArray0[0] = 1.0
        set realArray0[1] = 2.0
        set realArray0[2] = 3.0

        set realArray1[0] = 4.0
        set realArray1[1] = 5.0
        set realArray1[2] = 6.0
        set realArray1[4] = 10.0

        // test 2
        if (not(realArray0[0] == 1.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0[0] == 1.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(realArray0[1] == 2.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0[1] == 2.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 4
        if (not(realArray0[2] == 3.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0[2] == 3.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 5
        if (not(realArray1[0] == 4.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1[0] == 4.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(realArray1[1] == 5.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1[1] == 5.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(realArray1[2] == 6.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1[2] == 6.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(realArray1[4] == 10.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1[4] == 10.0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(realArray0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.getCount() == 3'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(realArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.getCount() == 4'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(realArray0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.haveAtIndex(0) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(realArray0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.haveAtIndex(1) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(realArray0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.haveAtIndex(2) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(realArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(0) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(realArray1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(1) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(realArray1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(2) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(realArray1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(3) == false'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(realArray1.haveAtIndex(4) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(4) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        call realArray0.removeAtIndex(0)

        // test 19
        if (not(realArray0.haveAtIndex(0) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.haveAtIndex(0) == false'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(realArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.haveAtIndex(0) == true'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 21
        if (not(realArray0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.getCount() == 2'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(realArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.getCount() == 4'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        call realArray0.flush()

        // test 23
        if (not(realArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray0.getCount() == 0'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(realArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realArray1.getCount() == 4'" + ", in series " + "RealArrayTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call realArray0.destroy()
        call realArray1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "RealArrayTests")
    endfunction

    private function RealVectorTests takes nothing returns nothing
        local DataStructures_RealVector realVector0 = DataStructures_RealVector.create()
        local DataStructures_RealVector realVector1 = DataStructures_RealVector.create()
        local integer test = 0
        local real value

        // test 0
        if (realVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(realVector0 == 0)'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (realVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(realVector1 == 0)'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(realVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.getCount() == 0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(realVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.getCount() == 0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set realVector0[0] = 1
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(realVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.getCount() == 0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = realVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call realVector0.push(1.0)
        call realVector0.push(2.0)
        call realVector0.push(3.0)
        call realVector1.push(4.0)
        call realVector1.push(5.0)
        call realVector1.push(6.0)
        call realVector1.push(10.0)

        // test 5
        if (not(realVector0[0] == 1.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0[0] == 1.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(realVector0[1] == 2.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0[1] == 2.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(realVector0[2] == 3.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0[2] == 3.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(realVector1[0] == 4.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[0] == 4.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(realVector1[1] == 5.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[1] == 5.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(realVector1[2] == 6.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[2] == 6.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(realVector1[3] == 10.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[3] == 10.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(realVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.getCount() == 3'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(realVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.getCount() == 4'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(realVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(0) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(realVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(1) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(realVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(2) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(realVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(0) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(realVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(1) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(realVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(2) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(realVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(3) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // 1.0, 2.0, 3.0 -> 1.0, 2.0
        call realVector0.pop()

        // test 21
        if (not(realVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(0) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(realVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(1) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(realVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.haveAtIndex(2) == false'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(realVector0[0] == 1.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0[0] == 1.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(realVector0[1] == 2.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0[1] == 2.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // 4.0, 5.0, 6.0, 10.0 -> 4.0, 6.0, 10.0
        call realVector1.removeAtIndex(1)

        // test 26
        if (not(realVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(0) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(realVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(1) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(realVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(2) == true'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(realVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.haveAtIndex(3) == false'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(realVector1[0] == 4.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[0] == 4.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(realVector1[1] == 6.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[1] == 6.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(realVector1[2] == 10.0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1[2] == 10.0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(realVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.getCount() == 2'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(realVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.getCount() == 3'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        call realVector0.flush()

        // test 34
        if (not(realVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector0.getCount() == 0'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(realVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'realVector1.getCount() == 3'" + ", in series " + "RealVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call realVector0.destroy()
        call realVector1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "RealVectorTests")
    endfunction

    private function runAll takes nothing returns boolean
        call RealArrayTests()
        call RealVectorTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary