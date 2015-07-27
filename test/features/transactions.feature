Feature: Transactions
  Story
  -----
  In order to track my financial activities,
  as a user,
  I want the ability to create, update and delete transactions in an account.

  Acceptance Criteria
  -------------------
  - User can create transactions
  - User can update transactions
  - User can delete transactions

  Background:
    Given an account called "Amazon VISA"
    And a category called "Auto & Transport"


  Scenario: Transaction Creation
    When I create a transaction with the following properties
      | date       | payee               | memo | amount | account     | category         |
      | 2015-02-01 | Chevron Gas Station | Gas  | -30.00 | Amazon VISA | Auto & Transport |

    And I ask for the transaction

    Then I should get the following transaction
      | date       | payee               | memo | amount | account     | category         |
      | 2015-02-01 | Chevron Gas Station | Gas  | -30.00 | Amazon VISA | Auto & Transport |


  Scenario: Transaction Update
    Given a transaction with the following properties
      | date       | payee               | memo | amount | account     | category         |
      | 2015-02-01 | Chevron Gas Station | Gas  | -30.00 | Amazon VISA | Auto & Transport |

    When I change the transaction amount to -50.00

    And I ask for the transaction

    Then I should get the following transaction
      | date       | payee               | memo | amount | account     | category         |
      | 2015-02-01 | Chevron Gas Station | Gas  | -50.00 | Amazon VISA | Auto & Transport |


  Scenario: Transaction Deletion
    Given a transaction with the following properties
      | date       | payee               | memo | amount | account     | category         |
      | 2015-02-01 | Chevron Gas Station | Gas  | -30.00 | Amazon VISA | Auto & Transport |

    When I delete the transaction

    Then the transaction should not exist
