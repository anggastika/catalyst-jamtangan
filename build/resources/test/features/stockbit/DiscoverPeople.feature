@Web @Test @DiscoverPeople @TradingHour @OutsideTradingHour
Feature: Discover People

  @Positive @DiscoverPeople @FollowDiscover
  Scenario: Follow people on suggestion list
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User scroll to trending section
    And User click +Discover more investors
    And User wait for 5 seconds
    And User scroll to top of page
    And User wait for 5 seconds
    And User click button "Follow" to one of contact
    And User wait for 5 seconds
    Then Button follow is changes to "Following"
    And User wait for 5 seconds
    And User click button "Following"
    And User wait for 5 seconds
    Then Followed button changed as "Follow"

  @Positive @DiscoverPeople @SearchDiscoverPeople
  Scenario: Search people from discover people
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User scroll to trending section
    And User click +Discover more investors
    And User wait for 5 seconds
    And User scroll to top of page
    And User wait for 5 seconds
    And User search for "Stock Exchange" text box in discover and enter
    And User wait for 5 seconds
    Then "IDX" is displayed in the search result

  @Positive @DiscoverPeople @Profile @MutualFriends
  Scenario Outline: See people mutual friends
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User search for "<username>"
    And User wait for 3 seconds
    Then User "<searchResult>" is displayed in the search result
    When User click first search result
    And User wait for 3 seconds
    Then User is at "<profileName>" profile page
    And User click followers
    Then User redirect to suggestion to follower List
    Examples:
      | username  | searchResult | profileName |
      | lucashemm | Lucas Hemm   | lucashemm   |

#  @Positive @SuggestionPeople @FriendsDiscovery
#  Scenario: See all suggestion friends
#    Given User is on landing page
#    When User click menu login
#    And User input username as "anggastika"
#    And User input password as "automation@87"
#    And User click button login
#    And User close profile avatar popup
#    And User scroll until section suggestion for you and see all
#    Then User redirect to suggestion list in discover people menu

  @Positive @SuggestionPeople @FriendsDiscovery
  Scenario: Follow suggestion friends
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User scroll until section suggestion for you and see all
    And User wait for 5 seconds
    And User redirect to suggestion list in discover people menu
    And User scroll to top of page
    And User wait for 5 seconds
    And User click button "Follow" to one of contact
    And User wait for 5 seconds
    Then Button follow is changes to "Following"
    And User wait for 5 seconds
    And User click button "Following"
    And User wait for 5 seconds
    Then Followed button changed as "Follow"

  @Positive @DiscoverPeople @Profile @SearchFollowers
  Scenario: Search followers from profile
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click followers
    And User search for "luccccc" in follower page
    And User wait for 3 seconds
    And User get notification "No results found" Because name is wrong user
    And user click close icon on text box
    And User search for "lucashemm" in follower page
    And User wait for 3 seconds
    And User click first result follow
    Then User "lucashemm" is displayed in the search follower result

  @Positive @DiscoverPeople @Profile @Followers
  Scenario: Follow back followers
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click followers
    And User wait for 5 seconds
    And User click button "Follow" to one of contact followers
    And User wait for 5 seconds
    Then Button follow of followers is changes to "Following"
    And User wait for 5 seconds
    And User click button "Following" in previous follow
    And User wait for 5 seconds
    Then Followed button of followers changed as "Follow"

  @Positive @DiscoverPeople @Profile @MutualFriends
  Scenario Outline: See people mutual friends
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User search for "<username>"
    And User wait for 3 seconds
    Then User "<searchResult>" is displayed in the search result
    When User click first search result
    And User wait for 3 seconds
    Then User is at "<profileName>" profile page
    And User click followers
    Then User redirect to suggestion to follower List
    Examples:
      | username  | searchResult | profileName |
      | lucashemm | Lucas Hemm   | lucashemm   |


