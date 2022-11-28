@Web @Stream @Test @TradingHour @OutsideTradingHour

Feature: Stream

  @Positive @SimplePost
  Scenario: Simple Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User click post idea
    And User wait for 5 seconds
    And User click profile menu
    And User wait for 5 seconds
    Then User post is posted

  @Negative @RepeatPost
  Scenario: Repeat Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User click post idea
    And User click profile menu
    And User wait for 3 seconds
    Then User post is posted
    When User click stream menu
    And User click compose idea
    And User makes the same post again
    And User click post idea
    Then User gets error "Anda tidak dapat menulis ide yang sama"

  @Positive @Comment
  Scenario: Comment Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click comment icon
    And User write a unique comment
    And User click post comment
    And User wait for 5 seconds
    Then User comment is posted

  @Negative @RepeatComment
  Scenario: Repeat Comment Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click comment icon
    And User write a unique comment
    And User wait for 3 seconds
    And User click post comment
    And User wait for 5 seconds
    Then User comment is posted
    When User writes the same comment again
    Then User click post comment and get error "Anda tidak dapat menulis ide yang sama"
#    And User click post comment
#    Then User gets error "You cannot post the same idea"


#  @Positive @PredictionPost
#  Scenario: Prediction Post
#    Given User is on landing page
#    When User click menu login
#    And User input username as "yongkinew"
#    And User input password as "stockbit@123"
#    And User click button login
#    And User click compose idea
#    And User click target icon
#    And User makes a unique post
#    And User set target symbol "BBCA"
#    And User input target price "50"
#    And User set target duration as "1 Week"
#    And User click post idea
#    And User wait for 5 seconds
#    Then Prediction Post is posted with symbol "BBCA" and target price "50"

  @Positive @SymbolPost
  Scenario: Symbol Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a symbol post with "IHSG"
    And User click post idea
    And User wait for 5 seconds
    And User click profile menu
    And User wait for 5 seconds
    And User clicks the symbol on most recent post
    And User wait for 5 seconds
    And User switch to newest browser tab
    And User wait for 5 seconds
    Then User is redirected to "Index Harga Saham Gabungan" company page

  @Negative @SymbolPost
  Scenario: Invalid Symbol Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a symbol post with "ZZZZ"
    And User click post idea
    And User wait for 5 seconds
    And User click profile menu
    And User wait for 3 seconds
    Then Symbol post "ZZZZ" is posted without a link

  @Positive @VotingPost
  Scenario Outline: Voting Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User click poll icon
    And User click add choice button
#    And User write a unique comment
    And User write unique question
    And User wait for 5 seconds
#    And User click add choice button
    And User fill choice 1 with "<option1>"
    And User fill choice 2 with "<option2>"
    And User fill choice 3 with "<option3>"
    And User wait for 5 seconds
    And User set poll to end in "<days>" "<hours>" "<minutes>"
    And User click post idea
    And User wait for 5 seconds
    And User scroll to main navigation
    And User wait for 5 seconds
    And User click profile menu
    And User scroll to profile stream
    Then Voting post is created with "<option1>", "<option2>", and "<option3>"
    And User wait for 5 seconds
#    And The poll will end in "<days>" "<hours>" "<minutes>"
    Then User gets description "0 votes · Polling ends in 1 day 1 minute"
    Examples:
      | option1 | option2 | option3 | days | hours | minutes |
      | ya      | Tidak   | Mungkin | 1    | 2     | 10      |

  @Positive @GifPost
  Scenario: GIF Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User click gif icon
    And User find gif with keyword "stocks"
    And User wait for 5 seconds
    And User pick first gif
    And User wait for 3 seconds
    And User click post idea
    And User wait for 5 seconds
    And User scroll to main navigation
    And User wait for 5 seconds
    And User click profile menu
    Then Gif Post is posted

  @Positive @FilePost
  Scenario: File Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User attach file to post
    And User click post idea
    And User wait for 5 seconds
    And User click profile menu
    Then File Post is posted

  @Positive @ImagePost
  Scenario: Image Post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User attach image to post
    And User click post idea
    And User wait for 5 seconds
    And User scroll to top of page
    And User click profile menu
    Then Image Post is posted

  @Positive @LikePost
  Scenario: Like other's post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 3 seconds
    And User close profile avatar popup
    And User search for "lucashemm"
    And User click first search result
    Then User is at "lucashemm" profile page
    When User clicks like on the first post
    Then Post is liked by "anggastika"

  @Negative @LikePost
  Scenario: Like own post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click profile menu
#    And User clicks like on the first post
#    Then User gets error "Sorry, you cannot like your own post"
    Then User clicks like on the first post and gets error "Maaf, anda tidak dapat like stream sendiri"

  @Positive @Notification123
  Scenario: Look at notifications
    Given User is on landing page
    When User click menu login
    And User input username as "yongkinew"
    And User input password as "stockbit@123"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click notification icon
    Then User see all notifications
    When User click notification's activity section
    Then User see activity notifications
    When User click notification's mention section
    Then User see mention notifications
    When User click notification's report section
    Then User see report notifications
    When User click notification's tipping section
    Then User see tipping notifications

  @Positive @FilterStream @News
  Scenario: Filter news post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
#    And User wait until stream is loaded
    And User click "News" stream section
    Then Stream will only show news post

  @Positive @FilterStream @Reports
  Scenario: Filter reports post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
#    And User wait until stream is loaded
    And User click "Reports" stream section
    Then Stream will only show reports post

  @Positive @FilterStream @Predictions
  Scenario: Filter predictions post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
#    And User wait until stream is loaded
    And User click "Predictions" stream section
    Then Stream will only show predictions post

  @Positive @FilterStream @Charts
  Scenario: Filter charts post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
#    And User wait until stream is loaded
    And User click "Charts" stream section
    Then Stream will only show charts post

  @Positive @FilterStream @Insiders
  Scenario: Filter insiders post
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
#    And User wait until stream is loaded
    And User click "Insiders" stream section
    Then Stream will only show insiders post

  @Positive @SharePost @CopyLink
  Scenario: Share Post by copy link
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click profile menu
    And User wait for 5 seconds
    And User click share button on first post
    And User click copy link button
#    Then Post link is copied
    Then User get copy link notification "Link Copied"

  @Positive @SharePost @Repost
  Scenario: Share Post by repost
    Given User is on landing page
    When User click menu login
    And User input username as "kimhyuna"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User makes a unique post
    And User click post idea
    And User wait for 5 seconds
    And User click profile menu
    Then User post is posted
    When User click header menu
    And User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "kimhyuna"
    And User wait for 5 seconds
    And User click first search result
    Then User is at "Kimhyunaaa" profile page
    When User click share button on first post
    And User click repost button
    And User click post idea
    And User close share popup
    And User wait for 5 seconds
    And User click profile menu
    Then User repost is posted

  @Positive @SharePost @ShareOtherUser
  Scenario: Share Post to other user
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User scroll to stream post
    And User wait for 3 seconds
    When User click share button on first post
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User click send message
    And User wait for 5 seconds
    And User scroll to top of page
    And User click chat menu
    And User search recipient "lucashemm"
    Then Post is shared to recipient

  @Positive @StreamSection @ShareToChat @YouTube
  Scenario: Share YouTube post to chat
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 3 seconds
    And User close profile avatar popup
    And User click compose idea
    And User write a youtube video link on write here textbox
    And User click post idea
    And User scroll to stream post
    Then User get notification "Post Successful"
    And User scroll to top of page
    And User wait for 3 seconds
    And User click profile menu
    And User wait for 5 seconds
    And User click share button on first post stream page
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "berita terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "anggastika"
    Then Post is shared to recipient


  @Positive @StreamSection @ShareToChat @News
  Scenario: Share news post to chat
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click News tab
    And User wait for 3 seconds
    And User scroll to stream post
    And User wait for 3 seconds
    And User click share button on first post stream page
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "berita terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "anggastika"
    Then Post is shared to recipient

  @Positive @StreamSection @ShareToChat @Report
  Scenario: Share report post to chat
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click Reports tab
    And User wait for 3 seconds
    And User scroll to stream post
    And User wait for 3 seconds
    And User click share button on first post stream page
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "report terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "anggastika"
    Then Post is shared to recipient

  @Positive @StreamShare @ShareToChat @Prediction
  Scenario: Share prediction post to chat
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click Predictions tab
    And User wait for 3 seconds
    And User scroll to stream post
    And User wait for 3 seconds
    And User click share button on first post stream page
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "prediksi terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "anggastika"
    Then Post is shared to recipient

  @Positive @StreamSection @ShareToChat @Chart
  Scenario: Share Charts post to chat
    Given User is on landing page
    And User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click Chart tab
    And User wait for 3 seconds
    And User scroll to stream post
    And User wait for 3 seconds
    And User click share button on first post stream page
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "Chart terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "anggastika"
    Then Post is shared to recipient

  @Positive @StreamSection @ShareToChat @Polling @SBC-150
    Scenario Outline: Share polling post to chat
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click compose idea
    And User click poll icon
    And User click add choice button
    And User write unique question
    And User wait for 5 seconds
    And User fill choice 1 with "<option1>"
    And User fill choice 2 with "<option2>"
    And User fill choice 3 with "<option3>"
    And User wait for 5 seconds
    And User set poll to end in "<days>" "<hours>" "<minutes>"
    And User click post idea
    And User wait for 5 seconds
    And User scroll to main navigation
    And User wait for 5 seconds
    And User click profile menu
    And User wait for 5 seconds
    And User click share button on first post polling
    And User click more
    And User input share recipient as "lucashemm"
    And User wait for 5 seconds
    And User select first recipient result
    And User write message "polling terbaru sis"
    And User click send message
    Then User get notification "Post Shared"
    And User wait for 5 seconds
    When User logout
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click chat menu
    And User search recipient "kimhyuna"
    Then Post is shared to recipient
    Examples:
      | option1 | option2 | option3 | days | hours | minutes |
      | ya      | Tidak   | Mungkin | 1    | 2     | 10      |

  @Positive @StreamSection @BlockUser @VisitBlockedUser @SBC-244
  Scenario: User block other user and want to visit blocked user
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "lucashemm"
    And User wait for 3 seconds
    When User click first search result
    And User click icon three dots on top right screen
    And User click blok
    And User click block on pop up screen and get notification
    And User wait for 5 seconds
    And User search for "lucashemm" and enter
    Then User is blocked

  @Negative @StreamSection @BlockedUserVisitProfile @SBC-244
  Scenario: Blocked user want to visit an account who blocked him
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "lucashemm" and enter
    Then User get screen notification "lucashemm is blocked"

  @Negative @StreamSection @BlockedUser @SeeComment @SBC-244
  Scenario: Blocked user can't see comment from account who blocked him
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "kimhyuna"
    And User wait for 3 seconds
    When User click first search result
    And User click comment icon
    And User write a unique comment
    And User click post comment
    And User close comment popup
    And User wait for 5 seconds
    When User logout
    And User wait for 5 seconds
    And User is on landing page
    And User click menu login
    And User input username as "lucashemm"
    And User input password as "stockbit"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User search for "kimhyuna"
    And User wait for 3 seconds
    When User click first search result
    And User click comment icon
    Then User can't see yongkinew comment on kimhyuna post

  @Positive @UnblockUser @SBC-244
  Scenario: Yongkinew unblock lucashemm
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 8 seconds
    And User close profile avatar popup
    And User click profile menu
    And User click edit profile
    And User click edit blocked list tab
    And User unblock "lucashemm"
    Then User is unblocked




