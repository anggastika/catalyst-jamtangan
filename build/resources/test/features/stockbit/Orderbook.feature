@Web @Orderbook @Test @TradingHour @OutsideTradingHour
Feature: Orderbook

  @Positive @NewOrderbookList @NewOrderbookListDropdown
  Scenario: Add New Orderbook list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click create orderbook header
    And User click create new orderbook list
    And User input unique orderbook list name
    And User click confirm orderbook list name
    And User wait for 3 seconds
    Then Orderbook list is created

  @Positive @NewOrderbookList @NewOrderbookListToolbar
  Scenario: Save an Orderbook list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click save orderbook list button
    And User input unique orderbook list name
    And User click confirm orderbook list name
    And User wait for 3 seconds
    Then Orderbook list is created

  @Positive @RenameOrderbookList
  Scenario: Rename an Orderbook list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click save orderbook list button
    And User input unique orderbook list name
    And User click confirm orderbook list name
    And User wait for 3 seconds
    Then Orderbook list is created
    When User click edit latest orderbook list
    And User wait for 3 seconds
    And User input new unique orderbook list name
    And User click confirm new orderbook list name
    And User wait for 3 seconds
    Then Orderbook list is updated

  @Negative @DuplicateOrderbookList
  Scenario: Add duplicate Orderbook list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click create orderbook header
    And User click create new orderbook list
    And User input unique orderbook list name
    And User click confirm orderbook list name
    And User wait for 3 seconds
    And User click create orderbook header
    And User click create new orderbook list
    And User input same orderbook name
    And User click confirm orderbook list name
    Then User gets error "Data Sudah ada"

  @Positive @DeleteOrderbookList
  Scenario: Delete Orderbook list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click create orderbook header
    And User click create new orderbook list
    And User input unique orderbook list name
    And User click confirm orderbook list name
    And User wait for 3 seconds
    And User click create orderbook header
    And User wait for 3 seconds
    Then Latest orderbook list name is correct
    When User delete latest orderbook list
    Then Orderbook list is deleted

  @Positive @NewOrderbook @OrderbookStock
  Scenario: Add New Orderbook with "Stock" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "AALI"
    And User click first suggestion
    Then Latest orderbook is created with name "AALI"
    And Latest orderbook realtime table is available

  @Positive @NewOrderbook @OrderbookOthers
  Scenario: Add New Orderbook with "Others" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "XSBC"
    And User click first suggestion
    Then Latest orderbook is created with name "XSBC"
    And Latest orderbook realtime table is available

  @Positive @NewOrderbook @OrderbookReksadana
  Scenario: Add New Orderbook with "Reksadana" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "RD66"
    And User click first suggestion
    Then Latest orderbook is created with name "RD66"
    And Latest orderbook realtime table is not available

  @Positive @NewOrderbook @OrderbookCurrency
  Scenario: Add New Orderbook with "Currency" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "GBPUSD"
    And User click first suggestion
    Then Latest orderbook is created with name "GBPUSD"
    And Latest orderbook realtime table is not available

  @Positive @NewOrderbook @OrderbookGlobalIndex
  Scenario: Add New Orderbook with "Global Index" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "NIKKEI"
    And User click first suggestion
    Then Latest orderbook is created with name "NIKKEI"
    And Latest orderbook realtime table is not available

  @Positive @NewOrderbook @OrderbookIndex
  Scenario: Add New Orderbook with "Index" symbol
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User click add orderbook button
    And User input orderbook symbol "IDX30"
    And User click first suggestion
    Then Latest orderbook is created with name "IDX30"
    And Latest orderbook realtime table is not available

#  [skip karena dulu belum ada criptocurency, sekarang sudah ada]
#  @Negative @NewOrderbook @OrderbookCrypto
#  Scenario: Add New Orderbook with "Cryptocurrency" symbol
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click orderbook menu
#    And User click add orderbook button
#    And User input orderbook symbol "BTC"
#    And Orderbook suggestion doesn't appear

  @Positive @DeleteOrderbook
  Scenario: Delete Orderbook
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User get current orderbook list size
    And User click add orderbook button
    And User input orderbook symbol "AALI"
    And User click first suggestion
    Then Latest orderbook is created with name "AALI"
    And Orderbook list size is added 1
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User delete latest orderbook
    And User wait for 3 seconds
    Then Orderbook list size is the same as before

  @Positive @OrderbookDropdown @OrderbookCompanyStream
  Scenario Outline: Go to orderbook Company Stream page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Company Stream dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Company Stream
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookKeyStats
  Scenario Outline: Go to orderbook Key Stats page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Key Stats dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Key Stats
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookFinancials
  Scenario Outline: Go to orderbook Financials page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Financials dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Financials
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookFundachart
  Scenario Outline: Go to orderbook Fundachart page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Fundachart dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Fundachart
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookSeasonality
  Scenario Outline: Go to orderbook Seasonality page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Seasonality dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Seasonality
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookTargetPrice
  Scenario Outline: Go to orderbook Target Price page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Target Price dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Target Price
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

  @Positive @OrderbookDropdown @OrderbookCompanyProfile
  Scenario Outline: Go to orderbook Company Profile page
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click orderbook menu
    And User wait for 5 seconds
    And User click add orderbook button
    And User input orderbook symbol "<symbol>"
    And User click first suggestion
    When User wait for 3 seconds
    And User open orderbook dropdown
    And User click orderbook Company Profile dropdown menu
    And User wait for 5 seconds
    Then User is redirected to orderbook "<name>" Company Profile
    Examples:
      | symbol | name                    |
      | AALI   | Astra Agro Lestari Tbk. |

#  @Positive @OrderbookDropdown @OrderbookChartbit
#  Scenario Outline: Go to orderbook Chartbit page
#    Given User is on landing page
#    When User click menu login
#    And User input username as "anggastika"
#    And User input password as "automation@87"
#    And User click button login
#    And User click orderbook menu
#    And User wait for 5 seconds
#    And User click add orderbook button
#    And User input orderbook symbol "<symbol>"
#    And User click first suggestion
#    When User wait for 3 seconds
#    And User open orderbook dropdown
#    And User click orderbook Chartbit dropdown menu
#    And User wait for 5 seconds
#    Then User is redirected to orderbook "<name>" Chartbit
#    Examples:
#      | symbol | name                    |
#      | AALI   | Astra Agro Lestari Tbk. |