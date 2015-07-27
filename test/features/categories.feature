Feature: Categories
  Story
  -----
  In order to analyze my income and expenses,
  as a user,
  I want the ability to create, update and delete categories.

  Acceptance Criteria
  -------------------
  - User can create categories
  - User can update categories
  - User can delete categories


  Scenario: Category Creation
    When I create a category called "Shopping"

    And I ask for the category

    Then I should get the category called "Shopping"

    
  Scenario: Category Update
    Given a category called "Shopping"

    When I change the category name to "General Shopping"

    And I ask for the category

    Then I should get the category called "General Shopping"


  Scenario: Category Deletion
    Given a category called "Shopping"

    When I delete the category

    Then the category should not exist
