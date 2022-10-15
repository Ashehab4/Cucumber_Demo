Feature: Calculator Test
  I want to use this template for my feature file

  @WIP
  Scenario: To add Two Numbers
    Given I have a calculator
    When I add number1 as 4 and number2 as 5
    Then I verify the 9
@calc
  Scenario Outline: To add Two Numbers
    Given I have a calculator
    When I add number1 as <number1> and number2 as <number2>
    Then I verify the <result>

    Examples: 
      | number1 | number2 | result |
      |       4 |       5 |      9 |
      |       6 |       2 |      8 |
      |       6 |       7 |     13 |

  @WIP
  Scenario: To add Two Numbers
    Given I have a calculator
    When I add Below
      | 2 |
      | 4 |
      | 5 |
      | 6 |
