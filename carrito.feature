Feature: Carrito

  Background:
    Given I am on the login page
    And I enter "standard_user" as the username
    And I enter "secret_sauce" as the password
    And I click the login button
    And I add "<initial_quantity>" random products to the cart

  Scenario: Eliminar producto desde el carrito
    When I go to the cart
    And I remove one product from the cart
    Then the cart should not contain the removed product

    Examples:
      | initial_quantity |
      | 2                |