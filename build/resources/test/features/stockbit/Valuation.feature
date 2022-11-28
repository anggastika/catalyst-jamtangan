@Web @Valuation @Test @TradingHour @OutsideTradingHour
Feature: Valuation

  @Positive @MakeValuation
  Scenario Outline: User create a valuation
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click valuations menu
    And User select valuation method "<method>"
    And User choose valuation symbol "<symbol>"
    And User wait for 3 seconds
    And User select valuation growth "<growth>"
    And User select valuation multiple "<multiple>"
    And User click value button
    Then Valuation result is displayed
    When User input unique valuation note
    And User click save valuation
    And User input unique valuation name
    And User confirm save valuation
    And User wait for 5 seconds
    Then Saved valuation name is displayed
    And Saved valuation note is displayed
    Examples:
      | method                   | symbol | growth                  | multiple                 |
      | Price to Earnings Method | BBRI   | EPS (Annual YoY Growth) | Mean PE Std Dev (1 Year) |

  @Negative @MakeValuation @EmptyValuationSymbol
  Scenario: User create a valuation with empty symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click valuations menu
    And User click value button
    Then User gets warning on symbol field "Please fill out this field."

  @Negative @MakeValuation @EmptyValuationName
  Scenario Outline: User create a valuation with empty name
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click valuations menu
    And User select valuation method "<method>"
    And User choose valuation symbol "<symbol>"
    And User wait for 3 seconds
    And User select valuation growth "<growth>"
    And User select valuation multiple "<multiple>"
    And User click value button
    Then Valuation result is displayed
    When User input unique valuation note
    And User click save valuation
    And User confirm save valuation
    Then User gets error "Name is a required field;"
    Examples:
      | method                   | symbol | growth                  | multiple                 |
      | Price to Earnings Method | BBRI   | EPS (Annual YoY Growth) | Mean PE Std Dev (1 Year) |

  @Positive @DeleteValuation
  Scenario Outline: User delete a newly created valuation
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click valuations menu
    And User select valuation method "<method>"
    And User choose valuation symbol "<symbol>"
    And User wait for 3 seconds
    And User select valuation growth "<growth>"
    And User select valuation multiple "<multiple>"
    And User click value button
    Then Valuation result is displayed
    When User input unique valuation note
    And User click save valuation
    And User input unique valuation name
    And User confirm save valuation
    And User wait for 5 seconds
    Then Saved valuation name is displayed
    When User delete valuation
    And Valuation is successfully deleted
    Examples:
      | method                   | symbol | growth                  | multiple                 |
      | Price to Earnings Method | BBRI   | EPS (Annual YoY Growth) | Mean PE Std Dev (1 Year) |

  @Positive @UpdateValuation
  Scenario Outline: User update a newly created valuation
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click valuations menu
    And User select valuation method "<method>"
    And User choose valuation symbol "<symbol>"
    And User wait for 3 seconds
    And User select valuation growth "<growth>"
    And User select valuation multiple "<multiple>"
    And User click value button
    Then Valuation result is displayed
    When User input unique valuation note
    And User click save valuation
    And User input unique valuation name
    And User confirm save valuation
    And User wait for 5 seconds
    Then Saved valuation name is displayed
    When User input unique valuation note
    And User click save valuation
    And User click update valuation
    Then Valuation is successfully updated
    When User edit valuation name
    Then Valuation is successfully updated
    And Saved valuation name is displayed
    And Saved valuation note is displayed
    Examples:
      | method                   | symbol | growth                  | multiple                 |
      | Price to Earnings Method | BBRI   | EPS (Annual YoY Growth) | Mean PE Std Dev (1 Year) |
