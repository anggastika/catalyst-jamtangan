@Web @VirtualBuy @Test @TradingHour
Feature: Virtual Buy On Trading Hour

  @Positive @FromPortfolio
  Scenario: Virtual buy from portfolio
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "MATCH"

  @Positive @FromCompanyPage
  Scenario: Virtual buy from company page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click stream menu
    And User click first trending stock
    And User click buy
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "MATCH"

  @Positive @FromPredictionStream
  Scenario: Virtual buy from Prediction Stream
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click stream menu
    And User click "Predictions" stream section
    And User click Buy from prediction
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "MATCH"

  @Positive @FromWatchlist
  Scenario: Virtual buy from Watch List
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User wait for 5 seconds
    And User click watchlist menu
    And User click Buy from watchlist
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "REJECTED"

  @Negative @LotLimit123
  Scenario: Virtual buy more than trading limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User click add order
    And User set order lot "50000"
    Then Trading limit warning is displayed

  @Negative @AutoRejectUpper
  Scenario: Virtual buy with auto rejection upper limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 5 seconds
    And User click add order
    And User wait for 5 seconds
    And User set price over upper limit
    And User wait for 5 seconds
    And User click place order
    And User wait for 5 seconds
    Then Order status is "REJECTED"

  @Negative @AutoRejectLower
  Scenario: Virtual buy with auto rejection lower limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User set price below lower limit
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "REJECTED"

  @Negative @AutoRejectMinimumPrice
  Scenario: Virtual buy with auto rejection minimum price
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User set order price to "40"
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "REJECTED"

  @Negative @AutoRejectBidNotAvailable1234
  Scenario: Virtual buy with auto rejection bid not available
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User set order price to less 1 than lowest ask price
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 5 seconds
    Then Order status is "REJECTED"
