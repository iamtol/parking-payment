
Feature: parking payment system 
    Scenario Outline: ค่าที่จอดรถใน 24 ชั่วโมง
        Given I got parking ticket at time <startTime>
        When I return parking at <endTime>
        Then I pay parking <cost> baht 

        Examples:
        |startTime|endTime|cost|
        |"8:00:00"|"8:00:00"|25|
        |"8:00:00"|"9:00:00"|25|

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