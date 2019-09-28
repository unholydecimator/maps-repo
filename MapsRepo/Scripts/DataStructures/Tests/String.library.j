library StringDataStructuresTests initializer ini requires DataStructures
    private function StringArrayTests takes nothing returns nothing
        local DataStructures_StringArray stringArray0 = DataStructures_StringArray.create()
        local DataStructures_StringArray stringArray1 = DataStructures_StringArray.create()
        local integer test = -2

        // test -2
        if (stringArray0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(stringArray0 == 0)'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test -1
        if (stringArray1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(stringArray1 == 0)'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 0
        if (not(stringArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.getCount() == 0'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 1
        if (not(stringArray1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.getCount() == 0'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        set stringArray0[0] = "one"
        set stringArray0[1] = "two"
        set stringArray0[2] = "three"

        set stringArray1[0] = "four"
        set stringArray1[1] = "five"
        set stringArray1[2] = "six"
        set stringArray1[4] = "ten"

        // test 2
        if (not(stringArray0[0] == "one")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0[0] == `one`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(stringArray0[1] == "two")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0[1] == `two`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 4
        if (not(stringArray0[2] == "three")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0[2] == `three`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 5
        if (not(stringArray1[0] == "four")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1[0] == `four`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(stringArray1[1] == "five")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1[1] == `five`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(stringArray1[2] == "six")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1[2] == `six`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(stringArray1[4] == "ten")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1[4] == `ten`'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(stringArray0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.getCount() == 3'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(stringArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.getCount() == 4'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(stringArray0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.haveAtIndex(0) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(stringArray0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.haveAtIndex(1) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(stringArray0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.haveAtIndex(2) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(stringArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(0) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(stringArray1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(1) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(stringArray1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(2) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(stringArray1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(3) == false'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(stringArray1.haveAtIndex(4) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(4) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        call stringArray0.removeAtIndex(0)

        // test 19
        if (not(stringArray0.haveAtIndex(0) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.haveAtIndex(0) == false'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(stringArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.haveAtIndex(0) == true'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 21
        if (not(stringArray0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.getCount() == 2'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(stringArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.getCount() == 4'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        call stringArray0.flush()

        // test 23
        if (not(stringArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray0.getCount() == 0'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(stringArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringArray1.getCount() == 4'" + ", in series " + "StringArrayTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call stringArray0.destroy()
        call stringArray1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "StringArrayTests")
    endfunction

    private function StringVectorTests takes nothing returns nothing
        local DataStructures_StringVector stringVector0 = DataStructures_StringVector.create()
        local DataStructures_StringVector stringVector1 = DataStructures_StringVector.create()
        local integer test = 0
        local string value

        // test 0
        if (stringVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(stringVector0 == 0)'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (stringVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(stringVector1 == 0)'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(stringVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.getCount() == 0'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(stringVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.getCount() == 0'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set stringVector0[0] = "one"
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(stringVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.getCount() == 0'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = stringVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call stringVector0.push("one")
        call stringVector0.push("two")
        call stringVector0.push("three")
        call stringVector1.push("four")
        call stringVector1.push("five")
        call stringVector1.push("six")
        call stringVector1.push("ten")

        // test 5
        if (not(stringVector0[0] == "one")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0[0] == `one`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(stringVector0[1] == "two")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0[1] == `two`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(stringVector0[2] == "three")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0[2] == `three`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(stringVector1[0] == "four")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[0] == `four`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(stringVector1[1] == "five")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[1] == `five`" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(stringVector1[2] == "six")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[2] == `six`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(stringVector1[3] == "ten")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[3] == `ten`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(stringVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.getCount() == 3'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(stringVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.getCount() == 4'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(stringVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(0) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(stringVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(1) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(stringVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(2) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(stringVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(0) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(stringVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(1) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(stringVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(2) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(stringVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(3) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // "one", "two", "three" -> "one", "two"
        call stringVector0.pop()

        // test 21
        if (not(stringVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(0) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(stringVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(1) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(stringVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.haveAtIndex(2) == false'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(stringVector0[0] == "one")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0[0] == `one`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(stringVector0[1] == "two")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0[1] == `two`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // "four", "five", "six", "ten" -> "four", "six", "ten"
        call stringVector1.removeAtIndex(1)

        // test 26
        if (not(stringVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(0) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(stringVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(1) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(stringVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(2) == true'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(stringVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.haveAtIndex(3) == false'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(stringVector1[0] == "four")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[0] == `four`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(stringVector1[1] == "six")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[1] == `six`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(stringVector1[2] == "ten")) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1[2] == `ten`'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(stringVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.getCount() == 2'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(stringVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.getCount() == 3'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        call stringVector0.flush()

        // test 34
        if (not(stringVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector0.getCount() == 0'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(stringVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'stringVector1.getCount() == 3'" + ", in series " + "StringVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call stringVector0.destroy()
        call stringVector1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "StringVectorTests")
    endfunction

    private function runAll takes nothing returns boolean
        call StringArrayTests()
        call StringVectorTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary