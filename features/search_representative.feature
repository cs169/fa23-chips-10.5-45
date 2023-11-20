Feature: User can search for representatives by address
  As a user of the app
  I want to search representatives by address
  So that a list of representatives shows up with that address specified
  
Scenario: Search with city and state
  Given I am on the home page
  When I go to the representatives page
  Then I should see "Search for a Representative"
  When I fill in "address" with "Berkeley, CA"
  And I press "commit"
  Then I should see "Joseph R. Biden"

Scenario: Search with a blank address
  Given I am on the home page
  When I go to the representatives page
  Then I should see "Search for a Representative"
  When I press "commit"
  Then I should be on the representatives page

Scenario: Search with state
  Given I am on the representatives page
  And I fill in "address" with "California"
  And I press "commit"
  Then I should see "Joseph R. Biden"