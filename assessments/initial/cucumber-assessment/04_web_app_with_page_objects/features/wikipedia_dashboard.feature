Feature: Dashboard
  This feature is intended to asses your knowledge of Watir with Page Objects
  for testing web applications. You will need to create some steps, add new
  page classes, etc. Hint: the first scenario works.

  Scenario: Featured article
    When I access Wikipedia for my language
    Then I am shown a summary of a featured article on the dashboard
    And I can access the full article from the dashboard

  Scenario: Recent News
    When I access Wikipedia for my language
    Then I am shown summaries of several recent news items on the dashboard
    And I am shown names of 3 recently deceased individuals on the dashboard
    And I can access Wikinews from the dashboard

  Scenario: Events from this day in history
    When I access Wikipedia for my language
    Then I am shown an ordered timeline of historical events for the current date on the dashboard

  Scenario Outline: More historical events
    When I access Wikipedia for my language
    Then I can access more historical events for <day> from the dashboard
  Examples:
    |day|
    |yesterday|
    |today    |
    |tomorrow |



