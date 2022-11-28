@Web @Chat @Test @TradingHour @OutsideTradingHour

Feature: Chat

  @Positive @SendMessage @TextOnlyMessage
  Scenario Outline: Send message with text only
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "<recipient>"
    And User input random message
    And User sends chat
    And User wait for 5 seconds
    Then Correct message is sent to recipient
    Examples:
      | recipient |
      | winonasa |

  @Positive @SendMessage12 @EmojiOnlyMessage
  Scenario Outline: Send message with emoji only
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "winonasa"
    And User wait for 5 seconds
    And User choose emoji "<emoji>"
    And User sends chat
    And User wait for 5 seconds
    Then Correct emoji message is sent to recipient
    Examples:
      | emoji |
      | nerd  |

  @Positive @SendMessage @TextAndEmojiMessage
  Scenario Outline: Send message with text and emoji
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "winonasa"
    And User input random message with space
    And User choose emoji "<emoji>"
    And User sends chat
    And User wait for 5 seconds
    Then Correct message and emoji is sent to recipient
    Examples:
      | emoji |
      | nerd  |

  @Positive @SendMessage @TextAndImageMessage12
  Scenario: Send message with text and image
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "winonasa"
    And User input random message
    And User upload an image
    And User sends chat
    And User wait for 5 seconds
    And Image is attached to the chat

  @Positive @SendMessage @TextAndGifMessage
  Scenario Outline: Send message with text and GIF
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "winonasa"
    And User input random message
    And User choose GIF "<gif>"
    And User sends chat
    And User wait for 5 seconds
    And Gif is attached to the chat
    Examples:
      | gif    |
      | stocks |

  @Negative @SendMessage @EmptyMessage
  Scenario Outline: Send empty message
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "<recipient>"
    And User wait for 5 seconds
    And User sends chat
    Then User gets error "Cannot send empty message"
    Examples:
      | recipient |
      | winonasa |

  @Positive @SendMessage @ClearChat
  Scenario Outline: Clear chat
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "<recipient>"
    And User input random message
    And User sends chat
    And User wait for 5 seconds
    And User clears chat
    And User wait for 5 seconds
    Then Chat is empty
    Examples:
      | recipient |
      | winonasa |

  @Positive @SendMessage @DeleteChat
  Scenario Outline: Delete chat
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User click chat menu
    And User start a new chat with "<recipient>"
    And User input random message
    And User sends chat
    And User wait for 5 seconds
    And User deletes chat
    And User wait for 3 seconds
    Then "<recipient>" is not present recent chats
    Examples:
      | recipient |
      | winonasa |
