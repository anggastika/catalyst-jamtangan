@Web @RealSell @Test @TradingHour @OutsideTradingHour
Feature: Real Sell

  @Positive @FromPortfolio
  Scenario: Real sell from portfolio
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User click sell
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "MATCHED"

  @Negative @AutoRejectUpper
  Scenario: Sell From Real with auto rejection upper limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User click sell
    And User set price over upper limit Real
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"

  @Negative @AutoRejectLower
  Scenario: Sell From Real with auto rejection lower limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User click sell
    And User set price below lower limit Real
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"

  @Negative @AutoRejectMinimumPrice
  Scenario: Sell From Real with auto rejection minimum price
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User click sell
    And User set order price real to "40"
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"

  @Negative @AutoRejectBidNotAvailable
  Scenario: Sell From Real with auto rejection bid not available
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User click sell
    And User set order price to more 1 than highest ask price real
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"
