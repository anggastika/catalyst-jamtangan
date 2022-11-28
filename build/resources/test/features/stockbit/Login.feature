@Web @Login @Test @TradingHour @OutsideTradingHour
Feature: Login

  @Positive @RegisteredUser @CorrectPassword
  Scenario: Login with registered user and correct password
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "automation@87"
    And User click button login
    And User close profile avatar popup
    Then User is on homepage

  @Negative @RegisteredUser @WrongPassword
  Scenario: Login with registered user and wrong password
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User input password as "wrongpass"
    And User click button login
    Then User gets error "Username atau password salah. Mohon coba lagi."

  @Negative @UnregisteredUser
  Scenario: Login with unregistered user
    Given User is on landing page
    When User click menu login
    And User input username as "yongkiunregis"
    And User input password as "stockbit@123"
    And User click button login
    Then User gets error "Username atau password salah. Mohon coba lagi."

  @Negative @BlankUsername @BlankPassword
  Scenario: Login with blank username and blank password
    Given User is on landing page
    When User click menu login
    And User click button login
    Then User gets warning on username field "Please fill out this field."
    Then Button login is still visible

  @Negative @BlankUsername @FilledPassword
  Scenario: Login with blank username and filled password
    Given User is on landing page
    When User click menu login
    And User input password as "automation@87"
    And User click button login
    Then User gets warning on username field "Please fill out this field."
    Then Button login is still visible

  @Negative @FilledUsername @BlankPassword
  Scenario: Login with filled username and blank password
    Given User is on landing page
    When User click menu login
    And User input username as "anggastika"
    And User click button login
    Then User gets warning on password field "Please fill out this field."
    Then Button login is still visible

  @Positive @FacebookAccount
  Scenario: Login with Facebook account
    Given User is on landing page
    When User click menu login
    When User click login with Facebook button
    When User changes to other window
    When User input facebook email "lucas.hemms4444@gmail.com"
    When User input facebook password "stockbit123"
    When User click facebook login button
    When User wait for 5 seconds
    When User changes back to parent window
    Then User is on homepage

  #  Google doesn't allow bot authentication at the moment
#  @Positive @GoogleAccount
#  Scenario: Login with Google Account
#    Given User is on landing page
#    When User click menu login
#    When User click login with Google button
#    When User changes to other window
#    When User input Google email "lucas.hemms4444@gmail.com"
#    When User click Google next button
#    When User wait for 2 seconds
#    When User input Google password "stockbit123"
#    When User click Google next button
#    When User wait for 5 seconds
#    When User changes back to parent window
#    Then User is on homepage

