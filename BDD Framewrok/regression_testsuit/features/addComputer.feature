
@add_computer
  Scenario: Add computer entry
    Given I am on add computer page
    When I enter computer_name
    And I enter introduced_date
    And I enter Discontinued_date
    And I select company_name
    Then I press create_this_computer button
