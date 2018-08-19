
Feature: parking payment system 
    Scenario Outline: ค่าที่จอดรถใน 24 ชั่วโมง
        Given I got parking ticket at time <startTime>
        When I return parking at <endTime>
        Then I pay parking <cost> baht 

        Examples:
        |startTime|endTime|cost|
        |"2018-08-19 8:00:00"|"2018-08-19 8:00:00"|25 |
        |"2018-08-19 8:00:00"|"2018-08-19 9:30:00"|50 |
        |"2018-08-19 8:00:00"|"2018-08-20 8:00:00"|250|
        # |"8:00:00"|"9:00:00"|25|
        # |"8:00:00"|"9:30:00"|50|
        # |"8:00:00"|"10:00:00"|50|
        # |"8:00:00"|"11:00:00"|80|
        # |"8:00:00"|"12:00:00"|110|
        # |"8:00:00"|"13:00:00"|145|
        # |"8:00:00"|"14:00:00"|180|
        # |"8:00:00"|"15:00:00"|250|

# Scenario: ชั่วโมงที่ 0-1
#     Given I got parking ticket at time "8:00:00"
#     When I return parking at "9:00:00"
#     Then I pay parking cost 25 baht
# Scenario: ชั่วโมงที่ 2
#     Given I got parking ticket at time "8:00:00"
#     When I return parking at "10:00:00"
#     Then I pay parking cost 50 baht
# Scenario: ชั่วโมงที่ 3
#     Given I got parking ticket at time "8:00:00"
#     When I return parking at "11:00:00"
#     Then I pay parking cost 80 baht