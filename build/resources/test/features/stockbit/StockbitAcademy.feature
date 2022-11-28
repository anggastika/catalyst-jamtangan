@Web @StockbitAcademy @Test @TradingHour @OutsideTradingHour

Feature: Stockbit Academy

#  @Positive @Web @StockbitAcademy @LandingPageGuest
#  Scenario: Guest access stockbit academy and login
#    Given User is on landing page
#    When User click menu academy
#    Then User redirected to stockbit academy page
#    And User click random module
#    And User click chapter 1
#    And User click lesson 1
#    And User continue to read until end of lesson 2
#    And User back to academy main page
#    And User read module 1, chapter 2, lesson 2
#    And User back to academy main page
#    And User click the first module that appear on explore module
#    And User click lesson 3
#    Then User can see screen login notification to continue reading next lesson
#    And User click login
#    And User input username as "anggastika"
#    And User input password as "automation@87"
#    And User click button login
#    Then User can continue to read another lesson

  @Positive @Web @StockbitAcedemy @WatchAndReadLesson
  Scenario: Watch youtube while reading a lesson
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    And User wait for 5 seconds
    And User click menu academy
    And User scroll to bottom of page
    And User wait for 5 seconds
    And User click module 1
    #And User scroll to chapter 1
    And User click chapter 1
    And User click lesson 1
    And User click video play button
#    And User minimize the video
#    And User scroll into the last of lesson 1
    Then User can watch the video while read the lesson

  @Positive @Web @StockbitAcedemy @QuizFromLesson
  Scenario: Take quiz from the end of reading lesson and submit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User wait for 3 seconds
    And User click menu academy
    And User scroll to bottom of page
    And User wait for 5 seconds
    And User click module 1
    And User click chapter 1
    And User click last lesson
    And User scroll to bottom of page
    And User click ambil quiz
    And User answering the question
    And User wait for 3 seconds
    Then User will be redirected to a new page "Selamat! Kamu telah menyelesaikan quiz dari Chapter Investasi dan Kebebasan Finansial"

  @Positive @Web @StockbitAcedemy @QuizFromChapter
  Scenario: Take quiz from current chapter quiz
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User wait for 3 seconds
    And User click menu academy
    And User click module 1
    And User click chapter 1
    And User go to chapter quiz
    Then User will be redirected to quiz page

  @Positive @Web @StockbitAcedemy @NextChapter
  Scenario: Take quiz from the end of reading lesson and submit
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User wait for 5 seconds
    And User click menu academy
    And User click module 1
    And User click chapter 1
    And User click last lesson
    And User scroll to bottom of page
    And User click lanjut ke chapter berikutnya
    Then User redirected to next chapter

  @Positive @Web @StockbitAcedemy @BackToMainPage
  Scenario: Back to main page after finished last quiz of last module
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User wait for 5 seconds
    And User close profile avatar popup
    And User wait for 3 seconds
    And User click menu academy
    And User wait for 3 seconds
    And User scroll to bottom of page
    And User click module 3
    And User scroll to bottom of page
    And User click last chapter
    And User click last lesson chapter 6
    And User scroll to bottom of page
    And User click kembali ke halaman utama
    Then User redirected to main page of stockbit academy
