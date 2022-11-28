@Web @Test @Real @TradingHour @OutsideTradingHour
Feature: Real Amend

  @Positive @Real @Buy @AmendOrder
  Scenario: Amend Order With Stockbit Securities
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
    Then User is on portfolio page
    And User click buy more
    And User wait for 3 seconds
#    And User set order price to more 11 than highest ask price
    And User set order price to more 11 than highest ask price real
    And User wait for 3 seconds
    And User click Add order lot
#    And User click place order
#    And User click order tab
#    And user click amend from one of buy order with open status
#    And User click Add order lot
#    And User click Place Order
#    And User click Next
#    And User wait for 3 seconds
#    And User click Done
#    Then User get order status is "AMENDED"

  @Positive @Real @Sell @AmendOrder
  Scenario: Amend Sell Order With Stockbit Securities
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
    Then User is on portfolio page
    And User click sell
    And User set order price to more 1001 than highest ask price real
#    And User click place order
#    And User click order tab
#    And user click amend from one of buy order with open status
#    And User click Add order lot
#    And User click Place Order
#    And User click Next
#    And User wait for 7 seconds
#    And User click Done
#    Then User get order status is "REQUEST AMEND"

  @Positive @Real @Buy @AmendOrder @LotLimit
  Scenario: Amend Sell Order With Stockbit Securities
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
    Then User is on portfolio page
    And User click sell
    And User set order price to more 1001 than highest ask price real
#    And User click order tab
#    And user click amend from one of buy order with open status
#    And User set order lot "50000"
#    Then Trading limit warning is displayed

  @Positive @Real @CancelOrder
  Scenario: Cancel Order With Stockbit Securities
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
    Then User is on portfolio page
    And User click order tab
#    And user click cancel from one of order
#    And User click OK
#    Then User get order status is "REQUEST AMEND"
