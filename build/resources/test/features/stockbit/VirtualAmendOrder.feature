@Web @Test @VirtualAmend @TradingHour @OutsideTradingHour
Feature: Virtual Amend

  @Positive @Virtual @Buy @VirtualAmendOrder
  Scenario Outline: Amend Order With Stockbit virtual
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    Then User is on portfolio page
    And User search for "<company name>"
    And User wait for 3 seconds
    When User click first search result
    And User click buy in company profile
    And User wait for 3 seconds
    And User set order price to less
    And User click add order
    And User click place order
    And User click Amend
    And User wait for 3 seconds
    And User set order price to less
    And User click place order
    And User wait for 3 seconds
    Then User get order status "AMENDED"
    Examples:
    |company name    |
    |     ZINC       |

  @Positive @Virtual @Sell @VirtualAmendOrderSell
  Scenario: Amend Sell Order With Stockbit Securities
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    Then User is on portfolio page
    And User click sell
#    And User click Add order lot
    And User click add order
    And User wait for 3 seconds
    And User click place order
    And User click Amend
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User wait for 3 seconds
    Then User get order status "AMENDED"

  @Negative @Virtual @VirtualAmendOrder @VirtualPriceLimit
  Scenario Outline: Real amend sell with which reach price limit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    Then User is on portfolio page
    And User search for "<company name>"
    And User wait for 3 seconds
    When User click first search result
    And User click buy in company profile
    And User wait for 3 seconds
    And User click add order
    And User click place order
    And User click Amend
    And User wait for 3 seconds
    And User set order price to more 5000 than highest ask price
    And User click place order
#    Then User get order status "REJECT"
    Examples:
      |company name    |
      |     ZINC       |

#  @Positive @Virtual @VirtualCancelOrder
#  Scenario: Cancel Order With Stockbit Securities
#    Given User is on landing page
#    When User click menu login
#    And User input username as "anggastika"
#    And User input password as "automation@87"
#    And User click button login
#    And User close profile avatar popup
#    And User click start trading
#    And User click virtual trading
#    Then User is on portfolio page
#    And User click order tab
#    And user click cancel order from one of order
#    And User click OK
#    Then Order cancelled
