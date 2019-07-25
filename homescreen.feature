Feature: Test for home screen functionality

  Scenario: I should be able to open My conversions screen
    Given I land on Home screen
    When I choose menu conversions "My Conversions"
    Then I should land on My conversions screen

  Scenario: Default values on Home screen is foot and centimeter
    Given I land on Home screen
    Then left unit picker value should be "Foot"
    And RIght unit picker value should be "Centimeter"

  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
    When I press Add to favorites icon
    Then I should see current conversion in Favorite conversions list

  Scenario Outline: Verify default conversion
    Given I land on Home screen
    When I input "<target>" to target text field
    Then I should see result as "<result>"
    Examples:
      | target | result |
      | 1      | 12     |
      | 2      | 24     |
      | 3      | 36     |
      | 9      | 106    |

  Scenario: User able to search by existing Conversion type
  Scenario: User able to select values from unit picker