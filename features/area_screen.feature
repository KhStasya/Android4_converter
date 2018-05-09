Feature: User is able to convert area units

  Background:
    Given I click on Got it button
    And I land on Area screen
@test1
  #Scenario: User is able to dismiss help
  #Given I land on help popup
  #When I click on Got it button
  #Then I land on Area screen
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

  @test4
  Scenario: User is able to use soft keyboard to enter values
    Given I click on Clear button
    When I click on From field
    And I press "35" on soft keyboard
    Then  I get "35000000" in To field


 Scenario:
   When I select "Hectare" from left column
   Then I see "Hectare" in From header
   And I get "10000" in To field

 @testL3Ex4
  Scenario Outline: Checking conversion
    When I swipe in the menu
    And I select "<target>" from menu
    And I land on "<result>" screen
    Then I see "<target2>" in From header
    And I get "<result2>" in To field
    And I select "<target3>" from right column
    Then I get "<result3>" in To field
    And I select "<target4>" from right column
    And I get "<result4>" in To field
    Examples:
      |target|result|target2|result2|target3|result3|target4|result4|
      |Currency|Currency|American Dollar|1.3404|British Pound|0.7361|Bulgarian Lev|1.6464|
      |Volume |Volume  |Teaspoon        |0.3333|Cup          |0.0208|Fluid Ounce (UK)|0.1735|
      |Energy  |Energy  |Joule          |0.001 |Calorie      |0.239 |BTU             |0.0009|


