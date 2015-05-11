Feature: Subtraction
  This feature is intended to assess your ability to match up steps and
  step definitions. You won't need to add and step definitions, they
  all exist.

  Scenario: Subtract several numbers
    Given I have entered 4 into the __
    And I __ entered 17 into the calculator
    And I have entered 6 __ the calculator
    When I press subtract
    Then the result should be -19 on the screen

  Scenario Outline: Subtraction properties
    Given I have entered <input_1> into the calculator
    And I have entered __ into the calculator
    When I press <button>
    Then the result should be <output> __
  Examples:
    | input_1 | input_2 | button | output |
    | 5       | 0       | subtract    | 5      |
    | 4       | -4      | subtract    | 8      |
    | 6       | 8       | subtract    | -2     |
    | 8       | 6       | subtract    | 2     |