Feature: Reporting
  Story
  -----
  In order to analyze my financial activities,
  as a user,
  I want the ability to summarize my transactions in different ways.

  Acceptance Criteria
  -------------------
  - User can group transactions by category

  Background:
    Given the following accounts
      | name   |
      | Cash   |
      | Credit |

    And the following categories
      | name             |
      | Auto & Transport |
      | Food & Dining    |


  Scenario: Transactions By Category
    Given the following transactions
      | date       | payee         | memo  | amount | account | category         |
      | 2015-01-01 | Gas Station   | Gas   | -10.00 | Cash    | Auto & Transport |
      | 2015-01-02 | Grocery Store | Food  | -20.00 | Credit  | Food & Dining    |
      | 2015-01-03 | Gas Station   | Gas   | -30.00 | Cash    | Auto & Transport |
      | 2015-01-04 | Grocery Store | Food  | -40.00 | Credit  | Food & Dining    |
      | 2015-01-05 | Gas Station   | Gas   | -50.00 | Cash    | Auto & Transport |
      | 2015-01-06 | Grocery Store | Food  | -60.00 | Credit  | Food & Dining    |

    When I ask for transactions by category with start date of "2015-01-02" and end date of "2015-01-05"

    Then I should get the following summary of transactions by category
      | category         | amount  |
      | Auto & Transport | -80.00  |
      | Food & Dining    | -60.00  |
