@Web @VirtualSell @Test @OutsideTradingHour
Feature: Virtual Sell Outside Trading Hour

  @Positive @FromPortfolio
  Scenario: Virtual sell from portfolio
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click sell
    And User click place order
    And User wait for 5 seconds
    Then User get notification "You have not invested on any stocks"

  @Negative @AutoRejectUpper
  Scenario: Sell From Virtual with auto rejection upper limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click sell
    And User wait for 5 seconds
    And User set price over upper limit
    And User click place order
    And User wait for 5 seconds
    Then User get notification "You have not invested on any stocks"

  @Negative @AutoRejectLower
  Scenario: Sell From Virtual with auto rejection lower limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click sell
    And User set price below lower limit
    And User click place order
    And User wait for 5 seconds
    Then User get notification "You have not invested on any stocks"

  @Negative @AutoRejectMinimumPrice
  Scenario: Sell From Virtual with auto rejection minimum price
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click sell
    And User set order price to "40"
    And User click place order
    And User wait for 5 seconds
    Then User get notification "You have not invested on any stocks"

  @Negative @AutoRejectBidNotAvailable
  Scenario: Sell From Virtual with auto rejection bid not available
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click sell
#    And User set order price to more 1 than highest ask price
    And User wait for 3 seconds
    And User set order price to more 1 than highest ask price to sell
    And User click place order
    And User wait for 5 seconds
    Then User get notification "You have not invested on any stocks"
