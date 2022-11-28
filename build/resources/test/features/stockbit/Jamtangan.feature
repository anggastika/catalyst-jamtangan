@Web
Feature: Order on jamtangan

  @Positive @TechTest
  Scenario: Login with registered user and correct password
    Given User is on landing page
    When User click menu login
    And User input username as "angga.pangestika@gmail.com"
    And User input password as "Passw0rd!"
    And User click button masuk
    Then User is on homepage
    And User input search as "casio"
    And User click loup icon
    And User click product
    And User click Beli Sekarang
    And User click Lanjutkan
    And User Pilih Pengiriman
    And User click Pembayaran
    And User choose VA BCA
    And User click Order
    Then User get bill payment information "Rp257.000"
