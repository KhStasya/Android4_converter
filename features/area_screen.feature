Feature: User is able to convert area units

  #Background:
    #Given I click on Got it button
@test1
  Scenario: User is able to dismiss help
  Given I land on help popup
  When I click on Got it button
  Then I land on Area screen
@test2
  Scenario: User  is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header
@test3
    Scenario Outline: User is able to convert values
      Given I click on Clear button
      When I enter "<target>" to From field
      Then I get "<result>" in To field
      Examples:
        |target|result|
      |1     |1000000      |
      |2      |2000000      |
      |55     |55000000     |
      |22.2       |22200000             |

  @test3
  Scenario: User is able to use soft keyboard to enter values
    Given I click on Clear button
    When I click on From field
    And I press "35" on soft keyboard
    Then  I get "35000000" in To field
  @wip
 Scenario:
   When I select "Hectare" from left column
   Then I see "Hectare" in From header
   And I get "10000" in To field
