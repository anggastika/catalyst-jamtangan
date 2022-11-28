@Web @Glossary @Test @TradingHour @OutsideTradingHour
Feature: Glossary Feature

  @Positive @GlossarySearch
  Scenario Outline: Search glossary
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click glossary menu
    And User search glossary "<glossary>"
    And User wait for 5 seconds
    Then Glossary index "<index>" is highlighted
#    And Glossary row "<glossary>" is active
    And User is shown "<glossary>" glossary page
    Examples:
      | glossary | index |
      | Cum Date | C     |

  @Positive @GlossaryIndex
  Scenario Outline: Click glossary index
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click glossary menu
    And User click glossary at index "<index>"
    And User wait for 5 seconds
    Then Every glossary row starts with the letter "<index>"
    Examples:
      | index |
      | C     |