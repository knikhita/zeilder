
@edit_computer
  Scenario: Edit computer
    Given I am on edit computer page
    When I change computer_name
    And I change introduced_date
    And I change Discontinued_date
    And I change company_name
    Then I press save_this_computer button
