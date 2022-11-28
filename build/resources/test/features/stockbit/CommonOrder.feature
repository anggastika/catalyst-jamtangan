@Web @OrderCommon @Test @TradingHour @OutsideTradingHour

Feature: Order Common

  @Positive @SetPrice @InitialPriceBelow200
  Scenario Outline: Set initial price below 200
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User set order price to "<initial>"
    And User press button plus price <amountPlus> times
    And User press button minus price <amountMinus> times
    Then Final set price will be "<final>"
    Examples:
      | initial | amountPlus | amountMinus | final |
      | 0       | 5          | 0           | 5     |
      | 3       | 5          | 4           | 4     |
      | 5       | 0          | 7           | 0     |
      | 198     | 5          | 0           | 206   |
      | 199     | 5          | 7           | 197   |

  @Positive @SetPrice @InitialPriceBetween200And500
  Scenario Outline: Set initial price between 200 and 500
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User set order price to "<initial>"
    And User press button plus price <amountPlus> times
    And User press button minus price <amountMinus> times
    Then Final set price will be "<final>"
    Examples:
      | initial | amountPlus | amountMinus | final |
      | 200     | 5          | 0           | 210   |
      | 203     | 5          | 4           | 205   |
      | 205     | 0          | 7           | 195   |
      | 498     | 5          | 0           | 520   |
      | 499     | 5          | 7           | 496   |

  @Positive @SetPrice @InitialPriceBetween500And2000
  Scenario Outline: Set initial price between 500 and 2000
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User set order price to "<initial>"
    And User press button plus price <amountPlus> times
    And User press button minus price <amountMinus> times
    Then Final set price will be "<final>"
    Examples:
      | initial | amountPlus | amountMinus | final |
      | 500     | 5          | 0           | 525   |
      | 507     | 5          | 4           | 512   |
      | 511     | 0          | 7           | 488   |
      | 1998    | 5          | 0           | 2050  |
      | 1999    | 5          | 7           | 1990  |

  @Positive @SetPrice @InitialPriceBetween2000And5000
  Scenario Outline: Set initial price between 2000 and 5000
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User set order price to "<initial>"
    And User press button plus price <amountPlus> times
    And User press button minus price <amountMinus> times
    Then Final set price will be "<final>"
    Examples:
      | initial | amountPlus | amountMinus | final |
      | 2000    | 5          | 0           | 2050  |
      | 2008    | 5          | 4           | 2020  |
      | 2015    | 0          | 7           | 1975  |
      | 4995    | 5          | 0           | 5125  |
      | 4999    | 5          | 7           | 4980  |

  @Positive @SetPrice @InitialPriceAbove5000
  Scenario Outline: Set initial price above 5000
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click start trading
    And User click virtual trading
    And User click buy more
    And User wait for 3 seconds
    And User set order price to "<initial>"
    And User press button plus price <amountPlus> times
    And User press button minus price <amountMinus> times
    Then Final set price will be "<final>"
    Examples:
      | initial | amountPlus | amountMinus | final |
      | 5000    | 5          | 0           | 5125  |
      | 5020    | 5          | 4           | 5075  |
      | 5026    | 0          | 7           | 4941  |
