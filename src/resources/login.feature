Feature: Login Functionality

  As a user I want to test login functionality.

  Scenario: User should login successfully with valid credentials
    Given I am on home page
    When I enter username and password
    Then I should login successfully.

  Scenario Outline: User should not login with invalid credentials
    Given I am on home page
    When I enter username "<username>" and password "<password>"
    Then I should not login successfully.
    Examples:
      | username         | password |
      | abc123@gmail.com | abc123   |
      | xyz123@gmail.com | xyz123   |