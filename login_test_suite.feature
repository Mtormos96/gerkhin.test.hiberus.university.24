Feature: Login

  Background:
    Given I am on the login page

  Scenario: Realizar Login exitoso
    When I enter "standard_user" as the username
    And I enter "secret_sauce" as the password
    And I click the login button
    Then I should be redirected to the inventory page
    And the URL should be "https://www.saucedemo.com/inventory.html"

  Scenario: Validar mensaje de Login incorrecto
    When I enter "standard" as the username
    And I enter "secret_sauce" as the password
    And I click the login button
    Then I should see an error message element

    Examples:
      | username      | password     |
      | standard      | secret_sauce |
      | standard_user | wrong_pass   |
      | incorrect_user| secret_sauce |