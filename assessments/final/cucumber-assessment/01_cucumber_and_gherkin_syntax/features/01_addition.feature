__: Addition
  This feature is intended to assess your knowledge of gherkin syntax. Please
  fill in the __ sections to get the scenarios to run.

  __: Add several numbers
    __ I have entered 4 into the calculator
    __ I have entered 17 into the calculator
    __ I have entered 6 into the calculator
    __ I press add
    __ the result should be 27 on the screen

  __ __: Addition properties
    __ I have entered <input_1> into the calculator
    __ I have entered <input_2> into the calculator
    __ I press <button>
    __ the result should be <output> on the screen
  __:
    | input_1 | input_2 | button | output |
    | 5       | 0       | add    | 5      |
    | 4       | -4      | add    | 0      |
    | 6       | 8       | add    | 14     |
    | 8       | 6       | add    | 14     |