
Feature: parking payment system 
    Scenario Outline: ค่าที่จอดรถใน 24 ชั่วโมง
        Given I got parking ticket at time <startTime>
        When I return parking at <endTime>
        Then I pay parking <cost> baht 
        And Show parking Time <diffTime> hour
    

        Examples:
        |startTime           |endTime             |cost|diffTime|
        |"2018-08-19 8:00:00"|"2018-08-19 8:00:00"|25  |"00:00:00" |
        |"2018-08-19 8:00:00"|"2018-08-19 9:30:00"|50  |"01:30:00"|
        |"2018-08-19 8:00:00"|"2018-08-19 9:45:00"|50  |"01:45:00"|
        |"2018-08-19 8:00:00"|"2018-08-19 9:45:24"|50  |"01:45:24"|
        |"2018-08-19 8:00:00"|"2018-08-20 8:00:00"|250 |"24:00:00"    |
        # |"8:00:00"|"9:00:00"|25|
        # |"8:00:00"|"9:30:00"|50|
        # |"8:00:00"|"10:00:00"|50|
        # |"8:00:00"|"11:00:00"|80|
        # |"8:00:00"|"12:00:00"|110|
        # |"8:00:00"|"13:00:00"|145|
        # |"8:00:00"|"14:00:00"|180|
        # |"8:00:00"|"15:00:00"|250|
