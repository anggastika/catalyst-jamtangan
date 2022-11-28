@Web @RightMenu @Test @TradingHour @OutsideTradingHour
Feature: Right Menu Feature

  @Positive @RightMenuPriceAlert
  Scenario: Trying functional Price Alert
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    Then User is on homepage
    And User wait for 4 seconds
    And User click price alert right menu
    And User click New Alert
    And User wait for 3 seconds
    And User input stocksname as "PGAS"
    And User wait for 4 seconds
    And User choose combobox condition as "Lesser than"
    And User wait for 3 seconds
    And User input on value as "10"
    And User wait for 3 seconds
    And User input on desc as "Test Only"
    And User wait for 3 seconds
    And User click button create
    And User wait for 5 seconds
    Then User get display price alert is available
    And User wait for 3 seconds
    And User delete price alert
    And User wait for 5 seconds
    And User click delete button Yes
    And User wait for 3 seconds
    Then User succesfully deleting price alert

  @Positive @RightMenuHotlist
  Scenario: Trying functional Hotlist on Right Menu
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    Then User is on homepage
    And User wait for 4 seconds
    And User click on Hotlist right menu
    Then User get section "Most Active"
    And User click active symbol
    Then User going to product detail

  @Positive @RightMenuBandarDetector
  Scenario: Trying functional Bandar Detector on Right Menu
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    Then User is on homepage
    And User wait for 4 seconds
    And User click on Bandar Detector right menu
    And User input company as "AALI"
#    And User click calendar icon
#    And User input calendar from as "05/01/2020"
#    And User input calemdar to as "05/01/2021"
#    Then Succesfully search

  @Positive @RightMenuValuation
  Scenario Outline: Trying functional Valuation on Right Menu
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    Then User is on homepage
    And User wait for 4 seconds
    And User click on Valuation right menu
    And User select valuation method right panel "<method>"
    And User choose valuation symbol right panel "<symbol>"
    And User wait for 3 seconds
    And User select valuation growth right panel "<growth>"
    And User select valuation multiple right panel "<multiple>"
    And User click value button on right panel
    And User scrolling section kenneth fisher panel
    And User wait for 10 seconds
   Then Valuation result is displayed on right panel
    When User input unique valuation note on right panel
    And User click save valuation on right panel
    And User input unique valuation name on right panel
    And User confirm save valuation on right panel
    And User wait for 5 seconds
    Then Succesfully saved
#    Then Saved valuation name is displayed on right panel
#    And Saved valuation note is displayed on right panel
    Examples:
      | method                   | symbol | growth                  | multiple                 |
      | Price to Earnings Method | BBRI   | EPS (Annual YoY Growth) | Mean PE Std Dev (1 Year) |
