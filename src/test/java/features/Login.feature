Feature: Login Feature Scenario

  Background: 
    Given I have launched the application
    And I click on the Login Link

  Scenario: This scenario is to define the login happy path
    When I enter the correct username and passowrd
    When I click on the Login Button
    Then I should land on the home page

  @Regression
  Scenario: This sceanrio is to define the failure path
    When I enter the incorrect username and passowrd
    When I click on the Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  @sanity
  Scenario: This sceanrio is to define the failure path
    When I enter the  username as "<Name>" and passowrd as "<Pass>"
    When I click on the Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  Scenario Outline: This sceanrio is to define the failure path
    When I enter the  username as "<Name>" and passowrd as "<Pass>"
    When I click on the Login Button
    Then I should get the error message "The email or password you have entered is invalid."

    Examples: 
      | Name             | Pass      |
      | teste@test.com   | Test@1234 |
      | test222@test.com | Test@1234 |
