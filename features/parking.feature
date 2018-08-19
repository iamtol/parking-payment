
Feature: parking payment system 
    # Scenario Outline: ชั่วโมงที่ 0-1 ราคา 25 บาท
    #     Given I got <hour>
    #     When I count with parking
    #     Then I should get <expected>

    #     Examples:
    #     |hour|expected|
    #     |    0|  25|
    #     |    1|  25|
Scenario: ชั่วโมงที่ 0
    Given I got 0
    When I count with parking
    Then I should get 25
Scenario: ชั่วโมงที่ 1
    Given I got 1
    When I count with parking
    Then I should get 25
Scenario: ชั่วโมงที่ 2
    Given I got 2
    When I count with parking
    Then I should get 50
Scenario: ชั่วโมงที่ 3
    Given I got 3
    When I count with parking
    Then I should get 80
Scenario: ชั่วโมงที่ 4
    Given I got 4
    When I count with parking
    Then I should get 110
