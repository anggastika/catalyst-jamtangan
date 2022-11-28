@Web @Profile @Test @TradingHour @OutsideTradingHour
Feature: Profile

  @Positive @EditProfile @General
  Scenario Outline: Edit Profile
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User wait for 3 seconds
    And User click public profile
    And User click edit symbol
    And User input unique name
#    And User input unique email
    And User click hide email checkbox
    And User input unique biography
    And User set location to "<location>"
    And User set gender to "<gender>"
    And User set birthday to "<day>" "<month>" "<year>"
    And User set unique website
    And User set unique address
    And User click save profile
    And User click profile menu
    And User click edit profile
    And User click public profile
    And User click edit symbol
    Then User public profile has changed
    Examples:
      | location    | gender | day | month | year |
      | DKI Jakarta | Male   | 26  | July  | 1997 |

#  @Positive @EditProfile @SetRegion12
#  Scenario Outline: Set Region
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User wait for 5 seconds
#    And User close profile avatar popup
#    And User click profile menu
#    And User click edit profile
#    And User wait for 5 seconds
#    And User click edit preferences tab
##    And User choose "<region>" region
#    And User choose "<region>" region
#    And User click edit preferences tab
#    Then Region is set as "<region>"
#    Examples:
#      | region    |
#      | Malaysia  |
#      | Indonesia |

  @Positive @EditProfile @UpdatePassword
  Scenario: Update Password
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User wait for 3 seconds
    And User click edit password tab
    And User input current password "stockbit@123"
    And User click submit password
    And User input new password "stockbit@123"
    And User input verify password "stockbit@123"
    And User click submit password
    Then Password is updated

#  @Negative @EditProfile @UpdatePassword @WrongCurrentPassword
#  Scenario Outline: Update Password with wrong current password
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User wait for 5 seconds
#    And User close profile avatar popup
#    And User click profile menu
#    And User click edit profile
#    And User click edit password tab
#    And User input current password "<currentPass>"
#    And User click submit password
#    And User input new password "<newPass>"
#    And User input verify password "<verifyPass>"
#    And User click save profile
#    Then Incorrect current password alert is shown
#    Examples:
#      | currentPass   | newPass      | verifyPass   |
#      | salahpassword | stockbit@123 | stockbit@123 |

#  @Negative @EditProfile @UpdatePassword @NewPasswordTooShort
#  Scenario Outline: Update Password with new password too short
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User wait for 5 seconds
#    And User close profile avatar popup
#    And User click profile menu
#    And User click edit profile
#    And User click edit password tab
#    And User input current password "<currentPass>"
#    And User input new password "<newPass>"
#    And User input verify password "<verifyPass>"
#    And User click save profile
##    Then New password too short alert is shown
#    Then Password not match alert is shown
#    Examples:
#      | currentPass  | newPass | verifyPass   |
#      | stockbit@123 | a       | stockbit@123 |
#
#  @Negative @EditProfile @UpdatePassword @VerifyPasswordTooShort
#  Scenario Outline: Update Password with verify password too short
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User wait for 5 seconds
#    And User close profile avatar popup
#    And User click profile menu
#    And User click edit profile
#    And User click edit password tab
#    And User input current password "<currentPass>"
#    And User input new password "<newPass>"
#    And User input verify password "<verifyPass>"
#    And User click save profile
#    Then Verify password too short alert is shown
#    Examples:
#      | currentPass  | newPass      | verifyPass |
#      | stockbit@123 | stockbit@123 | a          |

  @Negative @EditProfile @UpdatePassword @PasswordsNotMatch
  Scenario Outline: Update Password with passwords not matching
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click edit password tab
    And User input current password "<currentPass>"
    And User click submit password
    And User input new password "<newPass>"
    And User input verify password "<verifyPass>"
    Then Password not match alert is shown
    Examples:
      | currentPass  | newPass      | verifyPass    |
      | stockbit@123 | stockbit@123 | salahpassword |

  @Positive @EditProfile @UpdateNotifications @EmailNotifications
  Scenario: Update Email Notifications
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 10 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User wait for 3 seconds
    And User click edit notifications tab
    And User click email accordion
    # Social
    And User set email "Mentions" checkbox to "true"
    # Company Announcement
    And User set email "Company Announcement" checkbox to "false"
    # ====
    And User wait for 2 seconds
    And User scroll to top of page
#    And User click edit profile tab
#    And User click edit notifications tab
    Then Email "Mentions" checkbox is set to "true"
    And Email "Company Announcement" checkbox is set to "false"

  @Positive @EditProfile @UpdateNotifications @MobileNotifications
  Scenario: Update Mobile Notifications
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click edit notifications tab
    And User click mobile accordion
    # Social
    And User set mobile "Mentions" checkbox to "false"
    And User set mobile "Likes" checkbox to "true"
    And User set mobile "Replies" checkbox to "false"
    And User set mobile "Followed" checkbox to "false"
    And User set mobile "Reposts" checkbox to "false"
    And User set mobile "Followed users post" checkbox to "false"
    And User set mobile "Friend on Stockbit" checkbox to "false"
    # Chat
    And User set mobile "Someone messaged me" checkbox to "false"
##    And User set mobile "Group Chat Invitation" checkbox to "true"
    # Company Announcement
    And User set mobile "Company Announcement" checkbox to "true"
    # Company News
    And User set mobile "Company News" checkbox to "false"
    # Tipping
    And User set mobile "Tipping Received" checkbox to "true"
    # Price Alert
    And User set mobile "Price Alert" checkbox to "true"
    # Trending Stocks
    And User set mobile "Trending Stocks" checkbox to "true"
    # ====
    And User wait for 2 seconds
    And User scroll to top of page
#    And User click edit profile tab
#    And User click edit notifications tab
    Then Mobile "Mentions" checkbox is set to "false"
    And Mobile "Likes" checkbox is set to "true"
    And Mobile "Replies" checkbox is set to "false"
    And Mobile "Followed" checkbox is set to "false"
    And Mobile "Reposts" checkbox is set to "false"
    And Mobile "Followed users post" checkbox is set to "false"
    And Mobile "Friend on Stockbit" checkbox is set to "false"
    And Mobile "Someone messaged me" checkbox is set to "false"
###    And Mobile "Group Chat Invitation" checkbox is set to "true"
    And Mobile "Company Announcement" checkbox is set to "true"
    And Mobile "Company News" checkbox is set to "false"
    And Mobile "Tipping Received" checkbox is set to "true"
    And Mobile "Price Alert" checkbox is set to "true"
    And Mobile "Trending Stocks" checkbox is set to "true"

  @Positive @EditProfile @UpdateNotifications @DesktopNotifications
  Scenario: Update Desktop Notifications
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click edit notifications tab
    And User click desktop accordion
    # Social
    And User set desktop "Mentions" checkbox to "false"
    And User set desktop "Likes" checkbox to "true"
    And User set desktop "Replies" checkbox to "false"
    And User set desktop "Followed" checkbox to "false"
    And User set desktop "Reposts" checkbox to "false"
    And User set desktop "Followed users post" checkbox to "false"
    And User set desktop "Friend on Stockbit" checkbox to "false"
    # Chat
    And User set desktop "Someone messaged me" checkbox to "false"
    And User set desktop "Group Chat Invitation" checkbox to "true"
    # Company Announcement
    And User set desktop "Company Announcement" checkbox to "true"
    # Company News
    And User set desktop "Company News" checkbox to "false"
    # Tipping
    And User set desktop "Tipping Received" checkbox to "true"
    And User set desktop "Tipping Sent" checkbox to "true"
    # Claim
    And User set desktop "Tipping Claimed" checkbox to "true"
    # Price Alert
    And User set desktop "Price Alert" checkbox to "true"
    # Trending Stocks
    And User set desktop "Trending Stocks" checkbox to "true"
    # ====
    And User wait for 2 seconds
    And User scroll to top of page
#    And User click edit profile tab
#    And User click edit notifications tab
    Then Desktop "Mentions" checkbox is set to "false"
    And Desktop "Likes" checkbox is set to "true"
    And Desktop "Replies" checkbox is set to "false"
    And Desktop "Followed" checkbox is set to "false"
    And Desktop "Reposts" checkbox is set to "false"
    And Desktop "Followed users post" checkbox is set to "false"
    And Desktop "Friend on Stockbit" checkbox is set to "false"
    And Desktop "Someone messaged me" checkbox is set to "false"
#    And Desktop "Group Chat Invitation" checkbox is set to "true"
    And Desktop "Company Announcement" checkbox is set to "true"
    And Desktop "Company News" checkbox is set to "false"
    And Desktop "Tipping Received" checkbox is set to "true"
    And Desktop "Tipping Sent" checkbox is set to "true"
    And Desktop "Tipping Claimed" checkbox is set to "true"
    And Desktop "Price Alert" checkbox is set to "true"
    And Desktop "Trending Stocks" checkbox is set to "true"

  @Positive @EditProfile @UpdatePrivacy
  Scenario Outline: Update Privacy
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click edit privacy tab
    And User set switch discoverable by contacts to "<targetStatus>"
    And User wait for 2 seconds
#    And User click edit profile tab
#    And User click edit privacy tab
    Then User discoverable by contacts status is "<targetStatus>"
    Examples:
      | targetStatus |
      | false        |
      | true         |

  @Positive @BlockAndUnblockUser1
  Scenario: Block and unblock User
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User search for "lucashemm"
    And User wait for 5 seconds
    And User click first search result
    And User block the other user
    And User wait for 3 seconds
    And User click profile menu
    And User click edit profile
    And User click edit blocked list tab
    And User unblock "lucashemm"
    Then User is unblocked


      #S3D Avatar
  @Positive @Negative @3DAvatar @EditProfileAvatar
  Scenario: Change profile picture from edit profile
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click public profile
    And User click edit symbol
    And User wait for 3 seconds
    And User click profile picture icon
#    And User click show all avatars
    And User click random avatar
    And User click save
    Then User get notification "Profile Updated"

  @Positive @Negative @3DAvatar @ChangeMaleAvatar
  Scenario: Change profile into male avatar
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click public profile
    And User click edit symbol
    And User wait for 3 seconds
    And User click profile picture icon
#    And User click show all avatars
    And User choose male section
    And User click random avatar
    And User click save
    Then User get notification "Profile Updated"
#    And if update failed avatar doesn't change

  @Positive @Negative @3DAvatar @ChangeFemaleAvatar
  Scenario: Change profile into female avatar
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click public profile
    And User click edit symbol
    And User wait for 3 seconds
    And User click profile picture icon
#    And User click show all avatars
    And User choose female section
    And User click random avatar
    And User click save
    Then User get notification "Profile Updated"
#    And if update failed avatar doesn't change

  @Negative @3DAvatar @RemoveProfile
  Scenario: Change profile into female avatar
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click public profile
    And User click edit symbol
    And User wait for 3 seconds
    And User click profile picture icon
#    And User click change profile picture
    And User click remove profile picture
    And User click remove Avatar
    And User click profile menu
    Then Avatar profile changed to a random 3D avatar


  #Verified Badge
  @Positive @Profile @VerifiedBadge @SeeVerifiedBadge
  Scenario Outline: Verified badges are shown in all sections same with design in Figma
    Given User is on landing page
    When User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User close profile avatar popup
    And User search for "<username>"
    And User wait for 5 seconds
    Then User "<searchResult>" is displayed in the search result
    And User can see verified badge user profile on search
    And User wait for 3 seconds
    When User click first search result
    And User scroll to stream post
    Then User can see verified badge in post
    Examples:
      | username      | searchResult    |
      | HendryHerdian | Hendry Herdian  |



