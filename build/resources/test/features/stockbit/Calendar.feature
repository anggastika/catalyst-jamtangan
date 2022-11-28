@Web @Calendar @Test @TradingHour @OutsideTradingHour

Feature: Calendar Feature

  @Positive @CalendarSubmenuToday
  Scenario: Trying functional "Calendar" feature on submenu Today
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Today"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuEconomic
  Scenario: Trying functional "Calendar" feature on submenu Economic
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Economic"
    And User wait for 5 seconds
    Then Economic table is displayed

  @Positive @CalendarSubmenuDividend
  Scenario: Trying functional "Calendar" feature on submenu Dividend
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Dividend"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuStocksplit
  Scenario: Trying functional "Calendar" feature on submenu Stocksplit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Stocksplit"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuReverseSplit
  Scenario: Trying functional "Calendar" feature on submenu Reverse Split
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Reverse Split"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuRightIssue
  Scenario: Trying functional "Calendar" feature on submenu Right Issue
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Right Issue"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuBonus
  Scenario: Trying functional "Calendar" feature on submenu Bonus
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Bonus"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuTenderOffer
  Scenario: Trying functional "Calendar" feature on submenu Tender Offer
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Tender Offer"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuRups
  Scenario: Trying functional "Calendar" feature on submenu RUPS
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "RUPS"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuPublicExposure
  Scenario: Trying functional "Calendar" feature on submenu Public Exposure
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "Pubex"
    And User wait for 5 seconds
    And User click a symbol in the calendar table if any
    Then User is redirected to company page according to calendar

  @Positive @CalendarSubmenuIpo
  Scenario: Trying functional "Calendar" feature on submenu IPO
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "IPO"
    And User wait for 5 seconds
    Then IPO table is displayed

  @Positive @CalendarSubmenuIpo
  Scenario: Trying functional "Calendar" feature on submenu IPO
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "IPO"
    And User wait for 5 seconds
    Then IPO table is displayed

  @Positive @CalendarSubmenuIpo
  Scenario: Trying functional "Calendar" feature on submenu IPO
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click calendar menu
    And User click calendar submenu "IPO"
    And User wait for 5 seconds
    Then IPO table is displayed
