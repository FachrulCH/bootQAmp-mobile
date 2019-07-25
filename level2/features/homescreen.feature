Feature: Test for home screen functionality

  Scenario: I should be able to open My conversions screen
    Given I land on Home screen
    When I choose menu conversions "My Conversions"
    Then I should land on My conversions screen

  Scenario: User able to search by existing Conversion type
    Given I land on Home screen
    When I search for "Area"
    Then I should see left unit picker value should be "Hectare" 
    And I should see right unit picker value should be "Square meter" 
    # When I search for "Volume"
    # Then I should see left unit picker value should be "Gallon U.S. liquid"
    # And I should see right unit picker value should be "Liter"

  Scenario: Show All button should be enabled at launch
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

  Scenario Outline: User able to select values from unit pickers
    Then I select "<unit_type>" from left unit picker
    When I type "<amount>" on application keyboard
    Then I should see result as "<result>"

    Examples:
    |unit_type| amount |  result |
    | Inch    | 1      | 2.54    |
    | Link    | 1      | 20.1168 |