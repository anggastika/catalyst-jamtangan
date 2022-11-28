@Web @RealBuy @Test @TradingHour @OutsideTradingHour
Feature: Real Buy

  @Positive @FromPortfolio
  Scenario: Real buy from portfolio
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
    And User wait for 5 seconds
    And User click buy more
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "MATCHED"

  @Positive @FromCompanyPage
  Scenario: Real buy from company page
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
    And User wait for 5 seconds
    And User click stream menu
    And User click first trending stock
    And User click buy
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "MATCHED"

  @Positive @FromPredictionStream
  Scenario: Real buy from Prediction Stream
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User wait for 5 seconds
    And User click stream menu
    And User wait until stream is loaded
    And User click "Predictions" stream section
    And User click Buy from prediction
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "MATCHED"

  @Positive @FromWatchlist
  Scenario: Real buy from Watch List
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
    And User wait for 5 seconds
    And User click watchlist menu
    And User click Buy from watchlist
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "MATCHED"

  @Negative @LotLimit
  Scenario: Real buy more than trading limit
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
    And User wait for 5 seconds
    And User click buy more
    And User wait for 3 seconds
    And User click Add order lot
    And User set order lot "50000"
    Then Trading limit warning is displayed

  @Negative @AutoRejectUpper
  Scenario: Real buy with auto rejection upper limit
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
    And User wait for 5 seconds
    And User click buy more
    And User wait for 5 seconds
    And User set price over upper limit Real
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"

  @Negative @AutoRejectLower
  Scenario: Real buy with auto rejection lower limit
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
    And User wait for 5 seconds
    And User click buy more
    And User set price below lower limit Real
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"
#
  @Negative @AutoRejectMinimumPrice
  Scenario: Real buy with auto rejection minimum price
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User wait for 5 seconds
    And User click buy more
    And User set order price real to "40"
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"

  @Negative @AutoRejectBidNotAvailable
  Scenario: Real buy with auto rejection bid not available
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click login mahakarya sekuritas
    And User input sekuritas pin "776116"
    And User click submit pin
    And User wait for 5 seconds
    And User click buy more
    And User set order price real to less 1 than lowest ask price
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User wait for 5 seconds
#    Then Order status is "REJECTED"
