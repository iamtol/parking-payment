
Feature: parking payment system 
    # Scenario Outline: ชั่วโมงที่ 0-1 ราคา 25 บาท
    #     Given I got <hour>
    #     When I count with parking
    #     Then I should get <expected>

    #     Examples:
    #     |hour|expected|
    #     |    0|  25|
    #     |    1|  25|

Scenario: ชั่วโมงที่ 0-1
    Given I got parking ticket at time "8:00:00"
    When I return parking at "9:00:00"
    Then I pay parking cost 25 baht
Scenario: ชั่วโมงที่ 2
    Given I got parking ticket at time "8:00:00"
    When I return parking at "10:00:00"
    Then I pay parking cost 50 baht