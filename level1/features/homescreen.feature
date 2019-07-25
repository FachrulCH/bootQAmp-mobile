Feature: Test for home screen functionality

  Scenario: I should be able to open My conversions screen
    Given I land on Home screen
    When I choose menu conversions "My Conversions"
    Then I should land on My conversions screen