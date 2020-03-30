
@delete_computer
  Scenario: Delete computer entry
    Given I am on edit computer page
    When I press delete_this_computer button
    Then I see confirmation Notification
