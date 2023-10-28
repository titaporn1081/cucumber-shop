#Titaporn Techawathanakanok 6310451081
Feature: check product stock
  As a manager
  I want to get remaining products in stock

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Strawberry" with price 80.00 and stock of 10 exists

  Scenario: Buy one product
    When A customer bought "Strawberry" with quantity 5
    Then stock of "Strawberry" should be 5

  Scenario: Buy multiple products
    When A customer bought "Strawberry" with quantity 3
    And A customer bought "Bread" with quantity 2
    Then stock of "Strawberry" should be 7
    And stock of "Bread" should be 3