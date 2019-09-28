library LocationDataStructuresTests initializer ini requires DataStructures
    private function LocationArrayTests takes nothing returns nothing
        local DataStructures_LocationArray locationArray0 = DataStructures_LocationArray.create()
        local DataStructures_LocationArray locationArray1 = DataStructures_LocationArray.create()
        local integer test = 0

        // test 0
        if (locationArray0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationArray0 == 0)'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 1
        if (locationArray1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationArray1 == 0)'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(locationArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.getCount() == 0'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(locationArray1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.getCount() == 0'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        set locationArray0[0] = Location(0.00, 1.00)
        set locationArray0[1] = Location(2.00, 3.00)
        set locationArray0[2] = Location(4.00, 5.00)

        set locationArray1[0] = Location(6.00, 7.00)
        set locationArray1[1] = Location(8.00, 9.00)
        set locationArray1[2] = Location(10.00, 11.00)
        set locationArray1[4] = Location(12.00, 13.00)

        // test 4
        if (not(GetLocationX(locationArray0[0]) == 0.00 and GetLocationY(locationArray0[0]) == 1.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray0[0]) == 0.00 and GetLocationY(locationArray0[0]) == 0.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 5
        if (not(GetLocationX(locationArray0[1]) == 2.00 and GetLocationY(locationArray0[1]) == 3.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray0[1]) == 2.00 and GetLocationY(locationArray0[1]) == 3.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(GetLocationX(locationArray0[2]) == 4.00 and GetLocationY(locationArray0[2]) == 5.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray0[2]) == 4.00 and GetLocationY(locationArray0[2]) == 5.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(GetLocationX(locationArray1[0]) == 6.00 and GetLocationY(locationArray1[0]) == 7.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray1[0]) == 6.00 and GetLocationY(locationArray1[0]) == 7.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(GetLocationX(locationArray1[1]) == 8.00 and GetLocationY(locationArray1[1]) == 9.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray1[1]) == 8.00 and GetLocationY(locationArray1[1]) == 9.00)'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(GetLocationX(locationArray1[2]) == 10.00 and GetLocationY(locationArray1[2]) == 11.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray1[2]) == 10.00 and GetLocationY(locationArray1[2]) == 11.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(GetLocationX(locationArray1[4]) == 12.00 and GetLocationY(locationArray1[4]) == 13.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationArray1[4]) == 12.00 and GetLocationY(locationArray1[4]) == 13.00'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(locationArray0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.getCount() == 3'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(locationArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.getCount() == 4'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(locationArray0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.haveAtIndex(0) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(locationArray0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.haveAtIndex(1) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(locationArray0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.haveAtIndex(2) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(locationArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(0) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(locationArray1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(1) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(locationArray1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(2) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(locationArray1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(3) == false'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(locationArray1.haveAtIndex(4) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(4) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        call RemoveLocation(locationArray0[0])
        call locationArray0.removeAtIndex(0)

        // test 21
        if (not(locationArray0.haveAtIndex(0) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.haveAtIndex(0) == false'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(locationArray1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.haveAtIndex(0) == true'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(locationArray0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.getCount() == 2'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(locationArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.getCount() == 4'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        call RemoveLocation(locationArray0[1])
        call RemoveLocation(locationArray0[2])
        call locationArray0.flush()

        // test 25
        if (not(locationArray0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray0.getCount() == 0'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(locationArray1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationArray1.getCount() == 4'" + ", in series " + "LocationArrayTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call RemoveLocation(locationArray1[0])
        call RemoveLocation(locationArray1[1])
        call RemoveLocation(locationArray1[2])
        call RemoveLocation(locationArray1[4])
        call locationArray0.destroy()
        call locationArray1.destroy()

        // tests passed
        call BJDebugMsg("All tests passed in series " + "LocationArrayTests")
    endfunction

    private function LocationVectorTests takes nothing returns nothing
        local DataStructures_LocationVector locationVector0 = DataStructures_LocationVector.create()
        local DataStructures_LocationVector locationVector1 = DataStructures_LocationVector.create()
        local integer test = 0
        local location value = null

        // test 0
        if (locationVector0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationVector0 == 0)'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 1
        if (locationVector1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationVector1 == 0)'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(locationVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.getCount() == 0'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(locationVector1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.getCount() == 0'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector mutation error:")
        set locationVector0[0] = value
        call BJDebugMsg("No longer expecting errors.")

        // test 4
        if (not(locationVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.getCount() == 0'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting vector access error:")
        set value = locationVector0[0]
        call BJDebugMsg("No longer expecting errors.")

        call locationVector0.push(Location(0.00, 1.00))
        call locationVector0.push(Location(2.00, 3.00))
        call locationVector0.push(Location(4.00, 5.00))
        call locationVector1.push(Location(6.00, 7.00))
        call locationVector1.push(Location(8.00, 9.00))
        call locationVector1.push(Location(10.00, 11.00))
        call locationVector1.push(Location(12.00, 13.00))

        // test 5
        if (not(GetLocationX(locationVector0[0]) == 0.00 and GetLocationY(locationVector0[0]) == 1.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector0[0]) == 0.00 and GetLocationY(locationVector0[0]) == 1.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(GetLocationX(locationVector0[1]) == 2.00 and GetLocationY(locationVector0[1]) == 3.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector0[1]) == 2.00 and GetLocationY(locationVector0[1]) == 3.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(GetLocationX(locationVector0[2]) == 4.00 and GetLocationY(locationVector0[2]) == 5.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector0[2]) == 4.00 and GetLocationY(locationVector0[2]) == 5.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(GetLocationX(locationVector1[0]) == 6.00 and GetLocationY(locationVector1[0]) == 7.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[0]) == 6.00 and GetLocationY(locationVector1[0]) == 7.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(GetLocationX(locationVector1[1]) == 8.00 and GetLocationY(locationVector1[1]) == 9.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[1]) == 8.00 and GetLocationY(locationVector1[1]) == 9.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(GetLocationX(locationVector1[2]) == 10.00 and GetLocationY(locationVector1[2]) == 11.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[2]) == 10.00 and GetLocationY(locationVector1[2]) == 11.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(GetLocationX(locationVector1[3]) == 12.00 and GetLocationY(locationVector1[3]) == 13.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[3]) == 12.00 and GetLocationY(locationVector1[3]) == 13.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 12
        if (not(locationVector0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.getCount() == 3'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 13
        if (not(locationVector1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.getCount() == 4'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 14
        if (not(locationVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(0) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 15
        if (not(locationVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(1) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 16
        if (not(locationVector0.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(2) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 17
        if (not(locationVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(0) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 18
        if (not(locationVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(1) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 19
        if (not(locationVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(2) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 20
        if (not(locationVector1.haveAtIndex(3) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(3) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // (0.00, 1.00), (2.00, 3.00), (4.00, 5.00) -> (0.00, 1.00), (2.00, 3.00)
        call RemoveLocation(locationVector0[2])
        call locationVector0.pop()

        // test 21
        if (not(locationVector0.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(0) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 22
        if (not(locationVector0.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(1) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 23
        if (not(locationVector0.haveAtIndex(2) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.haveAtIndex(2) == false'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 24
        if (not(GetLocationX(locationVector0[0]) == 0.00 and GetLocationY(locationVector0[0]) == 1.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector0[0]) == 0.00 and GetLocationY(locationVector0[0]) == 1.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 25
        if (not(GetLocationX(locationVector0[1]) == 2.00 and GetLocationY(locationVector0[1]) == 3.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0[1]) == 2.00 and GetLocationY(locationVector0[1]) == 3.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // (6.00, 7.00), (8.00, 9.00), (10.00, 11.00), (12.00, 13.00) -> (6.00, 7.00), (10.00, 11.00), (12.00, 13.00)
        call RemoveLocation(locationVector1[1])
        call locationVector1.removeAtIndex(1)

        // test 26
        if (not(locationVector1.haveAtIndex(0) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(0) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 26
        if (not(locationVector1.haveAtIndex(1) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(1) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(locationVector1.haveAtIndex(2) == true)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(2) == true'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 28
        if (not(locationVector1.haveAtIndex(3) == false)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.haveAtIndex(3) == false'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 29
        if (not(GetLocationX(locationVector1[0]) == 6.00 and GetLocationY(locationVector1[0]) == 7.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[0]) == 6.00 and GetLocationY(locationVector1[0]) == 7.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(GetLocationX(locationVector1[1]) == 10.00 and GetLocationY(locationVector1[1]) == 11.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[1]) == 10.00 and GetLocationY(locationVector1[1]) == 11.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 31
        if (not(GetLocationX(locationVector1[2]) == 12.00 and GetLocationY(locationVector1[2]) == 13.00)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'GetLocationX(locationVector1[2]) == 12.00 and GetLocationY(locationVector1[2]) == 13.00'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 32
        if (not(locationVector0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.getCount() == 2'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 33
        if (not(locationVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.getCount() == 3'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting location removal.")
        call locationVector0.flush()
        call BJDebugMsg("No longer expecting location removal.")

        // test 34
        if (not(locationVector0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector0.getCount() == 0'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1

        // test 35
        if (not(locationVector1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationVector1.getCount() == 3'" + ", in series " + "LocationVectorTests")
            return
        endif
        set test = test + 1
        
        // cleanup
        call locationVector0.destroy()
        call BJDebugMsg("Expecting location removal.")
        call locationVector1.destroy()
        call BJDebugMsg("No longer expecting location removal.")

        // tests passed
        call BJDebugMsg("All tests passed in series " + "LocationVectorTests")
    endfunction

    private function LocationSetTests takes nothing returns nothing
        local DataStructures_LocationSet locationSet0 = DataStructures_LocationSet.create()
        local DataStructures_LocationSet locationSet1 = DataStructures_LocationSet.create()
        local integer test = 0
        local location value = null
        local location loc0 = Location(0.00, 1.00)
        local location loc1 = Location(2.00, 3.00)
        local location loc2 = Location(4.00, 5.00)

        local location loc3 = Location(6.00, 7.00)
        local location loc4 = Location(8.00, 9.00)
        local location loc5 = Location(10.00, 11.00)
        local location loc6 = Location(12.00, 13.00)

        // test 0
        if (locationSet0 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet0 == 0)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 1
        if (locationSet1 == 0) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet1 == 0)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 2
        if (not(locationSet0.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.getCount() == 0'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 3
        if (not(locationSet1.getCount() == 0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.getCount() == 0'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 4
        if (locationSet0.have(null)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet0.have(null))'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting set mutation error:")
        call locationSet0.add(null)
        call locationSet0.remove(null)
        call BJDebugMsg("No longer expecting errors.")

        call locationSet0.add(loc0)
        call locationSet0.add(loc1)
        call locationSet0.add(loc2)
        call locationSet1.add(loc3)
        call locationSet1.add(loc4)
        call locationSet1.add(loc5)
        call locationSet1.add(loc6)

        // test 5
        if (not(locationSet0.have(loc0))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(loc0)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 6
        if (not(locationSet0.have(loc1))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(loc1)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 7
        if (not(locationSet0.have(loc2))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(loc2)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 8
        if (not(locationSet1.have(loc3))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc3)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 9
        if (not(locationSet1.have(loc4))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc4)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 10
        if (not(locationSet1.have(loc5))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc5)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 11
        if (not(locationSet1.have(loc6))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc6)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call locationSet0.loopBegin()
        loop
            exitwhen locationSet0.loopEnd()
            set value = locationSet0.loopGetNext()

            // test 12 - 17
            if (not(locationSet0.have(value))) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(value)'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1

            if (locationSet1.have(value)) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet1.have(value))'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1
        endloop

        call locationSet1.loopBegin()
        loop
            exitwhen locationSet1.loopEnd()
            set value = locationSet1.loopGetNext()

            // test 18 - 25
            if (locationSet0.have(value)) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet0.have(value))'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1

            if (not(locationSet1.have(value))) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(value)'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1
        endloop

        // test 26
        if (not(locationSet0.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.getCount() == 3'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 27
        if (not(locationSet1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.getCount() == 4'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call locationSet0.remove(loc0)

        // test 28
        if (locationSet0.have(loc0)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet0.have(loc0))'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1
        call RemoveLocation(loc0)

        // test 29
        if (not(locationSet0.have(loc1))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(loc1)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 30
        if (not(locationSet0.have(loc2))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(loc2)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call locationSet0.loopBegin()
        loop
            exitwhen locationSet0.loopEnd()
            set value = locationSet0.loopGetNext()

            // test 31 - 34
            if (not(locationSet0.have(value))) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.have(value)'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1

            if (locationSet1.have(value)) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet1.have(value))'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1
        endloop

        // test 35
        if (not(locationSet0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.getCount() == 2'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 36
        if (not(locationSet1.getCount() == 4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.getCount() == 4'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call locationSet1.remove(loc4)

        // test 37
        if (locationSet1.have(loc4)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet1.have(loc4))'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1
        call RemoveLocation(loc4)

        // test 38
        if (not(locationSet1.have(loc3))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc3)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 39
        if (not(locationSet1.have(loc5))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc5)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 40
        if (not(locationSet1.have(loc6))) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(loc6)'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call locationSet1.loopBegin()
        loop
            exitwhen locationSet1.loopEnd()
            set value = locationSet1.loopGetNext()

            // test 41 - 46
            if (locationSet0.have(value)) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'not(locationSet0.have(value))'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1

            if (not(locationSet1.have(value))) then
                call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.have(value)'" + ", in series " + "LocationSetTests")
                return
            endif
            set test = test + 1
        endloop

        // test 47
        if (not(locationSet0.getCount() == 2)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet0.getCount() == 2'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        // test 48
        if (not(locationSet1.getCount() == 3)) then
            call BJDebugMsg("Test " + I2S(test) + " failed: " + "'locationSet1.getCount() == 3'" + ", in series " + "LocationSetTests")
            return
        endif
        set test = test + 1

        call BJDebugMsg("Expecting location removal.")
        call locationSet0.flush()
        call BJDebugMsg("No longer expecting location removal.")

        // cleanup
        call locationSet0.destroy()
        call BJDebugMsg("Expecting location removal.")
        call locationSet1.destroy()
        call BJDebugMsg("No longer expecting location removal.")
        set value = null
        set loc0 = null
        set loc1 = null
        set loc2 = null 
        set loc3 = null 
        set loc4 = null 
        set loc5 = null 
        set loc6 = null

        // tests passed
        call BJDebugMsg("All tests passed in series " + "LocationSetTests")
    endfunction

    private function runAll takes nothing returns boolean
        call LocationArrayTests()
        call LocationVectorTests()
        call LocationSetTests()
        return false
    endfunction

    private function ini takes nothing returns nothing
        debug local trigger t = CreateTrigger()
        debug call TriggerAddCondition(t, Condition(function runAll))
        debug call TriggerRegisterTimerEvent(t, 0.00, false)
    endfunction
endlibrary