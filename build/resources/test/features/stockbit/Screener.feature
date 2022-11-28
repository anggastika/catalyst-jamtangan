@Web @Screener @Test @TradingHour @OutsideTradingHour
Feature: Screener

  @Positive @SearchPreset
  Scenario Outline: Search screener preset
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click preset screener button
    And User choose "<query>" preset filter
    And User wait for 5 seconds
    Then "<result>" preset is chosen
    Examples:
      | query    | result               |
      | high vol | High Volume Breakout |

  @Positive @NewScreener
  Scenario Outline: Create New Screener
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User choose "LQ45" as stock universe
    And User remove default rule
    And User click Tambah Rules
    And User choose Basic Ratio
    And User set "<metric1>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding basic as "1000000000000"
    And User click Tambah Rules
    And User choose Ratio vs Ratio
    And User set "<metric2>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding ratio as "100"
    And User set "<metric3>" as second financial metric
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    Then Screener name is displayed
    And Metrics "<metric1>", "<metric2>", and "<metric3>" are displayed
    Examples:
      | metric1    | metric2               | metric3                  |
      | Market Cap | Consensus Price (Low) | 5 Year Price Returns (%) |

  @Negative @NewScreener @EmptyRule
  Scenario: Create New Screener with empty fields
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User click save screener
    Then User gets error "Item Metrics Not Found"

  @Positive @DeleteScreener
  Scenario: Delete Screener
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User choose "LQ45" as stock universe
    And User remove default rule
    And User click Tambah Rules
    And User choose Basic Ratio
    And User set "Market Cap" as first financial metric
    And User choose ">=" operator
    And User input angka pembanding basic as "1000000000000"
    And User click save screener
    And User wait for 3 seconds
    Then Saved screener is present
    When User delete newly saved screener
    And User wait for 3 seconds
    Then Saved screener doesn't exist anymore

  @Positive @FavoritePresetScreener
  Scenario Outline: Favorite a Preset Screener
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User remove "<level3>" screener if favorited
    And User wait for 3 seconds
    And User click preset screener button
    And User choose level 1 preset "<level1>"
    And User choose level 2 preset "<level2>"
    And User favorited "<level3>" preset screener
    And User close preset screener menu
    Then "<level3>" preset is favorited
    Examples:
      | level1 | level2     | level3             |
      | Size   | Market Cap | Top Market Capital |

  @Positive @RemoveFavoriteScreener
  Scenario Outline: Remove Favorite Screener
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User set favourite "<level3>" screener from "<level1>", "<level2>" if not yet
    Then "<level3>" preset is favorited
    When User remove "<level3>" preset from favourites
    And User wait for 3 seconds
    Then "<level3>" preset is not favorited
    Examples:
      | level1 | level2     | level3             |
      | Size   | Market Cap | Top Market Capital |

  @Positive @EditScreener @AddMetric
  Scenario Outline: Edit Screener add metric
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User choose "LQ45" as stock universe
    And User set "<metric1>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding basic as "1000000000000"
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    Then Screener name is displayed
    And Metric "<metric1>" is displayed
    When User click edit screener
    And User click Tambah Rules
    And User choose Ratio vs Ratio
    And User set "<metric2>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding ratio as "100"
    And User set "<metric3>" as second financial metric
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    Then Screener name is displayed
    And Metrics "<metric1>", "<metric2>", and "<metric3>" are displayed
    Examples:
      | metric1    | metric2               | metric3                  |
      | Market Cap | Consensus Price (Low) | 5 Year Price Returns (%) |

  @Positive @EditScreener @DeleteMetric
  Scenario Outline: Edit Screener delete metric
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User choose "LQ45" as stock universe
    And User set "<metric1>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding basic as "1000000000000"
    And User click Tambah Rules
    And User choose Ratio vs Ratio
    And User set "<metric2>" as first financial metric
    And User choose ">" operator
    And User input angka pembanding ratio as "100"
    And User set "<metric3>" as second financial metric
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    Then Screener name is displayed
    And Metrics "<metric1>", "<metric2>", and "<metric3>" are displayed
    When User click edit screener
    And User remove latest rule
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    Then Screener name is displayed
    And User wait for 5 seconds
    And Metric "<metric4>" is displayed
    Examples:
      | metric1    | metric2               | metric3                  | metric4     |
      | Market Cap | Consensus Price (Low) | 5 Year Price Returns (%) | Market Cap  |

  @Positive @AddFinancialColumn
  Scenario Outline: Add financial column on screener
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click screener menu
    And User wait for 5 seconds
    And User click create new screener button
    And User input unique screener name
    And User choose "LQ45" as stock universe
    And User set "<metric1>" as first financial metric
    And User choose ">=" operator
    And User input angka pembanding basic as "1000000000000"
    And User click save screener
    And User wait for 5 seconds
    And User select newest saved screener
    And User click add financial column
    And User add "<metric2>" to be displayed
    And User click add financial column
    And User add "<metric3>" to be displayed
    And User wait for 3 seconds
    Then Screener name is displayed
    And Metrics "<metric1>", "<metric2>", and "<metric3>" are displayed
    Examples:
      | metric1    | metric2               | metric3                  |
      | Market Cap | Consensus Price (Low) | 5 Year Price Returns (%) |
