Feature: Special Calculator Operations
  This feature is intended to asses your ability to utilize step parameters
  and arguments.

  Scenario Outline: Math and Physics
    When I use the special constant <constant>
    Then the current value on the screen should be <value>
  Examples:
    | constant       | value  |
    | PI             | 3.1416 |
    | speed of light | 300000 |
    | speed of sound | 343    |