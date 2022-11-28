@Web @Financials @Test @TradingHour @OutsideTradingHour
Feature: Financials

  @Positive @FilterFinancialsTable
  Scenario Outline: Filter financials table
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click financials menu
    And User scroll to company navigation
    And User select report type as "<report>"
    And User wait for 10 seconds
    And User select statement type as "<statement>"
    And User wait for 5 seconds
    And User select currency type as "<currency>"
    And User wait for 5 seconds
    And User select order type as "<order>"
    Then Financial table title is "<title>"
    Examples:
      | report        | statement | currency | order | title              |
      | Balance Sheet | Annual    | IDR      | ID    | Dalam Miliaran IDR |
      | Cash Flow     | TTM       | USD      | EN    | In Million USD     |

  @Positive @SortFinancialsTable
  Scenario Outline: Sort financials table
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click financials menu
    And User scroll to company navigation
    And User wait for 5 seconds
    And User sort financials table by "<order>" order
    Then Financials table is sorted by "<order>" order
    Examples:
      | order      |
      | Ascending  |
      | Descending |

  @Positive @ChangeDisplayFinancialsTable
  Scenario Outline: Change display financials table
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click financials menu
    And User scroll to company navigation
    And User wait for 5 seconds
    And User change financials table display to "<unit>"
    Then Financials table is displayed in "<unit>"
    Examples:
      | unit       |
      | raw        |
      | percentage |

  @Positive @RoundFinancialsTable
  Scenario: Round financials table
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click financials menu
    And User scroll to company navigation
    And User wait for 5 seconds
    And User click round down
    Then Value is rounded to millions
    When User click round down
    Then Value is rounded to thousands
    When User click round up
    Then Value is rounded to millions
    When User click round up
    Then Value is rounded to billions