@Web @Search @Test @TradingHour @OutsideTradingHour
Feature: Search

  @Positive @SearchCompany
  Scenario Outline: Search company
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
    And User wait for 8 seconds
    Then User is at "<company>" company page
    Examples:
      | symbol | company                |
      | BBCA   | Bank Central Asia Tbk. |

  @Positive @SearchUser
  Scenario Outline: Search user
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<username>"
    And User wait for 5 seconds
    Then User "<searchResult>" is displayed in the search result
    When User click first search result
    Then User is at "<profileName>" profile page
    Examples:
      | username  | searchResult | profileName |
      | lucashemm | Lucas Hemm   | lucashemm   |

  @Positive @SearchCatalog
  Scenario Outline: Search catalog
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<catalog>"
    And User wait for 5 seconds
    Then Catalog "<catalogName>" is displayed in the search result
    When User click first search result
    And User wait for 8 seconds
    Then User is at "<catalogName>" catalog page
    Examples:
      | catalog  | catalogName                  |
      | Otomotif | Otomotif & Komponen Otomotif |

  @Positive @SearchInsider
  Scenario Outline: Search insider
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<insider>"
    And User wait for 5 seconds
    Then Insider "<insiderResult>" is displayed in the search result
    When User click first insider result
    And User wait for 8 seconds
    Then User is at "<insiderName>" insider page
    Examples:
      | insider     | insiderResult                          | insiderName                            |
      | deutsche bk | Deutsche Bk Ag (Private Banking) Spore | Deutsche Bk Ag (private Banking) Spore |
