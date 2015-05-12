Feature: Checking flight times

  Scenario: Flight between 2 airports
    When I search for flights between 2 cities for a specific day
    Then I am shown all available flight between those 2 airports for that day

  Scenario: Flight with identical departure and arrival
    When I search for flights departing and arriving at the same airport
    Then I am notified that I cannot perform the search