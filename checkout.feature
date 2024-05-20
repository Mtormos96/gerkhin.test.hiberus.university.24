Feature: Checkout

  Background:
    Given I am on the login page
    And I enter "standard_user" as the username
    And I enter "secret_sauce" as the password
    And I click the login button

  Scenario Outline: Comprobar el precio final del Checkout de varios productos
    Given I add "<product_quantity>" random products to the cart
    When I go to the cart
    And I proceed to checkout
    And I fill out checkout information and continue
    And I finalize checkout
    Then the total price of the order should be the sum of the prices of the selected products

    Examples:
      | product_quantity |
      | 3                |

  Scenario: Realizar un pedido
    Given I add 1 random product to the cart
    When I go to the cart
    And I proceed to checkout
    And I fill out checkout information and continue
    And I finalize checkout
    Then the order should be successfully placed showing the message "Your order has been dispatched, and will arrive just as fast as the pony can get there!"
