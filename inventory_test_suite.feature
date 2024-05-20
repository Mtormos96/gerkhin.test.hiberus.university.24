Feature: Inventario

  Background:
    Given I am on the login page
    And I enter "standard_user" as the username
    And I enter "secret_sauce" as the password
    And I click the login button

  Scenario: Validar que el numero de resultados es 6
    Then the number of products displayed should be 6

  Scenario: Validar que existe el producto Sauce Labs Bolt T-Shirt en el inventario
    Then the product "Sauce Labs Bolt T-Shirt" should appear in the inventory

  Scenario: Añadir el producto Sauce Labs Bolt T-Shirt al carrito
    And I add the product "Sauce Labs Bolt T-Shirt" to the cart
    Then the cart icon should display "1" product

  Scenario: Eliminar producto del carrito desde el inventario
    And I add the product "Sauce Labs Bolt T-Shirt" to the cart
    And I remove the product "Sauce Labs Bolt T-Shirt" from the cart
    Then the cart icon should display "0" products

  Scenario Outline: Agregar al carrito <quantity> productos
    And I add <quantity> random products to the cart
    Then the cart icon should display "<quantity>" products

    Examples:
      | quantity |
      | 3        |

  Scenario: Ordenar el inventario por orden alfabético (Z a la A)
    And I select the filter "NAME (Z to A)"
    Then the inventory should be sorted alphabetically from Z to A

  Scenario: Ordenar el inventario por precio de Menor a Mayor
    And I select the filter "PRICE (low to high)"
    Then the inventory should be sorted by price from low to high