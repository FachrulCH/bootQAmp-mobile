Feature: User able to create and manage custom conversions

  Scenario: User able to create new conversion
    Given I land on Home screen
    And I choose menu conversions "My Conversions"
    And I create new custom component
    When I create new conversion name "Hitung ongkir"