Feature: Testing the Knockout.js dynamic table
  In order to test the knockout js dynamic table
  As a user
  I want to add and remove items from the list

  Scenario: Removing an entry from the table
    Given I am viewing the Knockoutjs table
    When I remove a row from the table
    Then I should not see the person in the list

  Scenario: Adding an entry to the table
    Given I am viewing the Knockoutjs table
    When I add a row to the table
    Then I should see a new row added to the table
