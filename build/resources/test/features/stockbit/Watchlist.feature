@Web @Watchlist @Test @TradingHour @OutsideTradingHour
Feature: Watchlist

  @Positive @AddSymbol123
  Scenario Outline: Add symbol to watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User remove "<symbol>" from watchlist if exists
    And User input "<symbol>" into search symbol
    And User wait for 3 seconds
    And User click first symbol
    Then Symbol "<symbol>" is added to watchlist
    Examples:
      | symbol |
      | AALI   |

  @Positive @AddColumn
  Scenario Outline: Add financial column to watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User remove column from watchlist if exists
    And User add column "<column>" to watchlist
    Then Column "<column>" is added to watchlist
    Examples:
      | column     |
      | Market Cap |

  @Negative @AddExistingColumn
  Scenario Outline: Add existing financial column to watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click watchlist menu
    And User remove column from watchlist if exists
    And User wait for 5 seconds
    And User add column "<column>" to watchlist
    And User wait for 5 seconds
    Then User gets error "<column>" already exists
    And User remove column from watchlist if exists
    Examples:
      | column     |
      | Market Cap |

  @Positive @DeleteExistingColumn
  Scenario Outline: Delete existing financial column from watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User remove column from watchlist if exists
    And User add column "<column>" to watchlist
    And User remove column from watchlist
    And User wait for 5 seconds
    Then Financial column is deleted
    Examples:
      | column     |
      | Market Cap |

  @Positive @AddNewWatchlist
  Scenario: Add new watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User open watchlist dropdown
    And User create new watchlist
    And User wait for 5 seconds
    Then Watchlist is created

  @Positive @EditWatchlist123
  Scenario: Edit watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User open watchlist dropdown
    And User wait for 5 seconds
    And User create new watchlist
    And User wait for 5 seconds
    And User rename watchlist
    And User wait for 5 seconds
    Then Watchlist is renamed
    And User wait for 5 seconds

  @Negative @EditWatchlist
  Scenario: Edit another watchlist with existing name
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User open watchlist dropdown
    And User create new watchlist
    And User wait for 5 seconds
    And User create new watchlist
    And User wait for 5 seconds
    And User open watchlist dropdown
    And User wait for 3 seconds
    And User rename new watchlist with old name
    And User wait for 5 seconds
    And User open watchlist dropdown
    Then Watchlist is not renamed

  @Positive @RemoveWatchlist
  Scenario: Remove watchlist
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click watchlist menu
    And User open watchlist dropdown
    And User wait for 5 seconds
    And User create new watchlist
    And User wait for 5 seconds
    And User remove created watchlist
    And User wait for 5 seconds
    And User open watchlist dropdown
    And User wait for 5 seconds
    Then Watchlist is deleted