Feature: Memory
  This feature is intended to assess your ability to match up steps and
  step definitions. You won't need to add and step definitions, they
  all exist.

  Scenario: Store and retrieve a result
    Given I have done some arithmetic
    And I have cleared the screen
    When I press recall
    Then I should see the previously stored result

