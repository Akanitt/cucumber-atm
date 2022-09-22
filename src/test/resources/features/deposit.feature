Feature: deposit
  As a customer
  I want to deposit into my account with ATM

Scenario Outline: Deposit into my account
  Given a customer with id 1 and pin 111 with balance 200 exists
  When I login to ATM with id 1 and pin 111
  When I deposit <amount> into my account with ATM
  Then my account balance is <balance>
  Examples:
      | amount | balance |
      |    0   |  200.00 |
      |  100   |  300.00 |
      |  500   |  700.00 |
      | 1000   | 1200.00 |