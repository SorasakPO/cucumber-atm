Feature: deposit
  As a customer
  I want to deposit money into my account using ATM

  Background:
    Given a customer with id 77 and pin 123 with balance 50000 exists
    When I login to ATM with id 77 and pin 123

  Scenario: Successful deposit money
    When deposit 5000.00 into my bankAccount
    Then my account balance is 55000.00