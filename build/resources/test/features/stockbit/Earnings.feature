@Web @Earnings @Test @TradingHour @OutsideTradingHour

Feature: Earnings Feature

  @Positive @EarningsFeature
  Scenario: Trying functional "Earnings" feature
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click earnings menu
    And User select sector
    And User input symbol on Earning Feature as "JAWA"
    And User wait for 5 seconds
    And User click search
    And User wait for 5 seconds
    Then User get symbol "JAWA"
