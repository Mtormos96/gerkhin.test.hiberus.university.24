Feature: LogOut

  Background:
    Given I am on the login page
    And I enter "<username>" as the username
    And I enter "<password>" as the password
    And I click the login button

  Scenario: Comprobar el Logout
    When I log out
    Then I should be redirected to the login page

    Examples:
      | username      | password     |
      | standard_user | secret_sauce |