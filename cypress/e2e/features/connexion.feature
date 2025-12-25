Feature: Login to the Orange HRM platform

  As an Orange HRM Admin user
  I want to log in to the platform
  So that I can access system functionalities

  Background:
    Given I am on the Orange HRM login page

  Scenario Outline: Login successfully
    When I enter username "<username>" and password "<password>"
    And I click the Login button
    Then I should be redirected to the home page

    Examples:
      | username | password |
      | Admin    | admin123 |

  Scenario Outline: Login with missing credentials
    When I enter username "<username>" and password "<password>"
    And I click the Login button
    Then I should see the error message "Required"

    Examples:
      | username | password |
      |          | admin123 |
      | Admin    |          |

  Scenario Outline: Login with invalid credentials
    When I enter username "<username>" and password "<password>"
    And I click the Login button
    Then I should see the error message "Invalid credentials"

    Examples:
      | username | password  |
      | Admin1   | admin123  |
      | Admin    | admin1234 |

  Scenario: Reset password successfully
    When I click on the "Forgot your password?" link
    And I enter username "Admin"
    And I click the Reset Password button
    Then I should see the success message "Reset Password link sent successfully"
