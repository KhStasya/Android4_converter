Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on Area screen
  @test6
    Scenario: User os able to call menu by swiping
      When I swipe in the menu
      Then I see app menu
  @wip
    Scenario Outline: User is able to select items from menu
      When I swipe in the menu
      And I select "<target>" from menu
      Then I land on "<result>" screen

    Examples:
    |target|result|
    |Currency|Currency|
    |Volume 22 |Volume  |
    |Torque  |Torque  |