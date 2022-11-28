@Web @Company @Test @TradingHour @OutsideTradingHour

Feature: Company

  @Positive @ExploreCatalog
  Scenario Outline: Explore catalog from company profile
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to catalog section
    And User select "<catalog>" catalog
    And User wait for 8 seconds
    And User switch to newest browser tab
    And User wait for 5 seconds
    Then User is at "<catalog>" catalog page
    Examples:
      | symbol | catalog |
      | BBCA   | LQ45    |

  @Positive @CompanyKeyStats @RedirectToFundachart
  Scenario Outline: Redirected from Key Stats to Fundachart
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 3 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Key Stats section
    And User wait for 5 seconds
    And User clicks a graph icon
    And User switch to newest browser tab
    Then User is at company Fundachart section
    Examples:
      | symbol |
      | BBCA   |

  @Positive @CompanySeasonality @SetSeasonalityPeriod
  Scenario Outline: Set Seasonality time period
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Seasonality section
    And User set seasonality range to "<year>"
    And User set seasonality end year to "<end>"
    And User click show seasonality
    And User wait for 5 seconds
    Then Seasonality is shown from "<end>" with <year> year range
    Examples:
      | symbol | year | end  |
      | BBCA   | 5    | 2019 |

  @Negative @CompanySeasonality @SetSeasonalityPeriod
  Scenario Outline: Set invalid Seasonality time period
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User wait for 5 seconds
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Seasonality section
    And User set seasonality range to "<year>"
    And User set seasonality end year to "<end>"
    And User click show seasonality
    Then User gets error "<error>"
    Examples:
      | symbol | year | end  | error                                                                             |
      | BBCA   | a    | 2019 | The backyear field must contain an integer                                        |
      | BBCA   | 5    | zxg1 | The year field must contain an integer                                            |
      | BBCA   | a    | xhxh | The year field must contain an integer The backyear field must contain an integer |

  @Positive @CompanyFundachart @AddFundachartGraph
  Scenario Outline: Add graph to Fundachart
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Fundachart section
    And User scroll to bottom of page
    And User add stock fundachart graph "<graphStock>"
    And User add metric fundachart graph "<graphMetric>"
    And User scroll to bottom of page
    And User wait for 5 seconds
    Then Graph is displayed stock "<symbol>" and "<graphStock>" with "<graphMetric>"
    Examples:
      | symbol | graphStock | graphMetric |
      | BBCA   | BBRI       | Market Cap  |

  @Positive @CompanyFundachart @SaveFundachartGraph
  Scenario Outline: Save Fundachart graph
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Fundachart section
    And User scroll to bottom of page
    And User click save fundachart
    And User click fundachart save as
    And User input unique fundachart name
    And User confirm save fundachart
    And User click save fundachart
    And User scroll to bottom of page
    Then New fundachart exists
    Examples:
      | symbol |
      | BBCA   |

  @Positive @CompanyStream @DisplayStream
  Scenario Outline: Go to stream section
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Stream section
    And User wait for 5 seconds
    Then User is on stream section
    And User wait for 5 seconds
    And All stream contains symbol "<symbol>"
    Examples:
      | symbol |
      | BBCA   |

  @Positive @CompanyComparison @AddStockToTable
  Scenario Outline: Add stock to table comparison
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Comparison section
    And User search for comparison stock "<stock>"
    And User wait for 5 seconds
    And User click first comparison stock result
    And User wait for 5 seconds
    Then Stock "<stock>" is shown on comparison table
    Examples:
      | symbol | stock |
      | BBCA   | AALI  |

  @Positive @CompanyComparison @RemoveStockFromTable
  Scenario Outline: Remove stock from table comparison
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Comparison section
    And User search for comparison stock "<stock>"
    And User wait for 5 seconds
    And User click first comparison stock result
    And User wait for 5 seconds
    Then Stock "<stock>" is shown on comparison table
    When User delete latest comparison stock
    Then Stock "<stock>" is not shown on comparison table
    Examples:
      | symbol | stock |
      | BBCA   | AALI  |

  @Positive @CompanyComparison @SaveTableComparison
  Scenario Outline: Save table comparison
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Comparison section
    And User click save comparison
    And User input unique comparison name
    And User confirm save comparison
    Then Comparison table is succesfully saved
    And New comparison table is displayed
    Examples:
      | symbol |
      | BBCA   |

  @Positive @CompanyComparison @DeleteTableComparison
  Scenario Outline: Delete table comparison
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Comparison section
    And User click save comparison
    And User input unique comparison name
    And User confirm save comparison
    Then Comparison table is succesfully saved
    And New comparison table is displayed
    When User scroll to top of page
    And User scroll to company navigation
    And User click delete latest comparison table
    And User wait for 3 seconds
    Then New comparison table is not displayed
    Examples:
      | symbol |
      | BBCA   |

#  @Positive @CompanyConsensus @DisplayConsensus
#  Scenario Outline: Go to consensus section
#    Given User is on landing page
#    When User click menu login
#    And User input username as "anggastika"
#    And User input password as "automation@87"
#    And User click button login
#    And User close profile avatar popup
#    And User search for "<symbol>"
#    And User wait for 5 seconds
#    And User click first search result
#    And User scroll to company navigation
#    And User navigate to company Consensus section
#    And User scroll to bottom of page
#    Then User is at company Consensus section
#    When User hover on one of the consensus graph
#    And User wait for 5 seconds
#    Then Consensus graph is shown
#    Examples:
#      | symbol |
#      | BBCA   |

  @Positive @CompanyCorporateAction @ExploreDataHistory
  Scenario Outline: Explore data history on Corporate Action section
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User wait for 5 seconds
    And User scroll to company navigation
    And User wait for 8 seconds
    And User navigate to company Corporate Action section
    And User wait for 8 seconds
#    And User scroll to bottom of page
    And User wait for 8 seconds
    And User click corporate action tab "<tab>"
#    Then Corporate action tab "<tab>" is active
    Examples:
      | symbol | tab           |
      | BBRI   | Dividend      |
      | BBRI   | Reverse Split |
      | BBRI   | Right Issue   |
      | BBRI   | Bonus         |
      | BBRI   | Tender Offer  |
      | BBRI   | RUPS          |

  @Positive @CompanyInsider @ExploreInvestorProfile
  Scenario Outline: Explore investor profile from Insider
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    And User click first search result
    And User scroll to company navigation
    And User navigate to company Insider section
    And User click investor profile
    And User wait for 8 seconds
    And User switch to newest browser tab
    Then User is redirected to investor profile with "<symbol>" stock present
    Examples:
      | symbol |
      | MNCN   |

    #New scenario amend bank
#  @Positive @CompanyPage @SeeActionAccount
#  Scenario: User can see action icon appear on stocklist
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click watchlist menu
#    And User scroll watchlist page
#    Then User will see a list if a company had corporate action will get a small purple icon beside the company sticker
#    And User click stream
#    Then User will see a list if a company had corporate action will get a small purple icon beside the company sticker
#    And User click hotlist in right menu
#    And User scroll down in most active stock
#    Then User will see a list if a company had corporate action will get a small purple icon beside the company sticker
#    And User scroll down in top gainer stock
#    Then User will see a list if a company had corporate action will get a small purple icon beside the company sticker
#    And User scroll down in top loser stock
#    Then User will see a list if a company had corporate action will get a small purple icon beside the company sticker

#  @Negative @CompanyPage @NoActionAccount
#  Scenario: No stocks with action icon
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click watchlist menu
#    And User scroll to bottom of page
#    Then User didn't find any current stock with action icon
#    And User click stream
#    Then User didn't find any current stock with action icon in trending stock
#    And User click hotlist in right menu
#    And User scroll down in most active stock
#    Then User didn't find any current stock with action icon
#    And User scroll down in top gainer stock
#    Then User didn't find any current stock with action icon
#    And User scroll down in top loser stock
#    Then User didn't find any current stock with action icon
#
#  @Positive @CompanyPage @DetailActionIcon
#  Scenario: User see action icon on company page detail
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll down in most active stock until found a stock that had an action icon
#    And User click the stock
#    Then User redirected to corp action detail
#    And User click purple icon
#    Then User see pop up "Perusahaan memiliki corporate action"
#    And User click purple icon again
#    And if company had notasi khusus, User click the yellow icon
#    Then User see pop up "Perusahaan memiliki notasi khusus"
#
#  @Negative @CompanyPage @NoDetailActionIcon
#  Scenario: User see no action icon on company page detail
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll down in most active stock until found a stock that had an action icon
#    Then User can't find any stock with action icon
#
#  @Positive @CompanyPage @CorpAction
#  Scenario: User see 5 latest corporate actions
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll to most active stock until found a stock that had an action icon
#    And User click the stock
#    And User click corp action
#    And User scroll down to see all corp action detail
#    Then User can see 5 Latest corporate actions are listed on the All Tab based on date
#
#  @Negative @CompanyPage @CorpActionEmpty
#  Scenario: User see no latest corporate actions
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll down in most active stock
#    And User click view more
#    And User click one of the stock
#    And User click corp action
#    Then User see corp action menu is empty
#
#  @Positive @CompanyPage @CorpActionOnGoing
#  Scenario: User can see on going corp action
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll down in most active stocks until found a stock that had an action icon
#    And User click the stock
#    And User click corp action
#    And User scroll down to see details of corp action
#    And User can see purple icon on going corporate action
#
#  @Negative @CompanyPage @NoOnGoingCorpAction
#  Scenario: No on going corp action
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click hotlist in right menu
#    And User scroll down in most active stock until found a stock that had an action icon
#    And User click the stock
#    And User click corp action
#    And User scroll down to see details of corp action
#    Then User can see any purple icon of on going corporate action
#
#  @Positive @CompanyPage @ActionIconOnBuy
#  Scenario: User can see action icon on buy page
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click start trading
#    And User click virtual trading
#    Then User redirected to portfolio page
#    And User click menu sector
#    And User click keuangan
#    And User click one of company that has corp action and notasi khusus icon
#    And User click buy
#    Then User can see icon if company had Corporate Action and Notasi Khusus on Buy page
#    And User click icon notasi khusus
#    Then User can see modals "Perusahaan memiliki notasi khusus"
#    And User click icon notasi khusus again
#    And User click icon corp icon
#    Then User can see modals "Perusahaan memiliki corporate action"
#
#  @Positive @CompanyPage @ActionIconSell
#  Scenario: User can see action icon on sell page
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click start trading
#    And User click virtual trading
#    Then User redirected to portfolio page
#    And user click gear icon on a company that has action icon such corp action and notasi khusus
#    And User click sell
#    Then User can see icon if company had Corporate Action and Notasi Khusus on Buy page
#    And User click icon notasi khusus
#    Then User can see modals "Perusahaan memiliki notasi khusus"
#    And User click icon notasi khusus again
#    And User click icon corp icon
#    Then User can see modals "Perusahaan memiliki corporate action"
#
#  @Positive @CompanyPage @ActionIconOnBuySecurities
#  Scenario: User can see action icon on buy page stockbit securities
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click start trading
#    And User click real trading
#    And User input sekuritas username "TIKA004R"
#    And User input sekuritas password "stockbit"
#    And User click sekuritas log in button
#    And User input sekuritas pin "123456"
#    And User click next button
#    And User click lanjut
#    Then User redirected to portfolio page
#    And User click menu sector
#    And User click keuangan
#    And User click one of company that has corp action and notasi khusus icon
#    And User click buy
#    Then User can see icon if company had Corporate Action and Notasi Khusus on Buy page
#    And User click icon notasi khusus
#    Then User can see modals "Perusahaan memiliki notasi khusus"
#    And User click icon notasi khusus again
#    And User click icon corp icon
#    Then User can see modals "Perusahaan memiliki corporate action"
#
#  @Positive @CompanyPage @ActionIconSellSecurities
#  Scenario: User can see action icon on sell page stockbit securities
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click start trading
#    And User click real trading
#    And User input sekuritas username "TIKA004R"
#    And User input sekuritas password "stockbit"
#    And User click sekuritas log in button
#    And User input sekuritas pin "123456"
#    And User click next button
#    And User click lanjut
#    Then User redirected to portfolio page
#    And user click gear icon on a company that has action icon such corp action and notasi khusus
#    And User click sell
#    Then User can see icon if company had Corporate Action and Notasi Khusus on Buy page
#    And User click icon notasi khusus
#    Then User can see modals "Perusahaan memiliki notasi khusus"
#    And User click icon notasi khusus again
#    And User click icon corp icon
#    Then User can see modals "Perusahaan memiliki corporate action"


        #Analyst Rating Sprint 1
  @Positive @CompanyPage @AnalystRating
  Scenario Outline: See menu analyst rating
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<symbol>"
    And User wait for 5 seconds
    Then Company "<company>" is displayed in the search result
    When User click first search result
    And User wait for 5 seconds
    Then User is at "<company>" company page
    #And User scroll to stream post
    And User click analyst
#    Then if company don't have analyst rating analyst page will empty and shown "no data" on screen
    Then If company have analyst data user can see analyst rating
    And User click exclamation mark beside analyst rating
    #Then User can see pop up "Disclaimer"
#    Then if company's analyst price rating not equal user can see analyst price rating
#    And User click exclamation mark beside analyst price rating
    Examples:
      | symbol | company                |
      | BBCA   | Bank Central Asia Tbk. |


