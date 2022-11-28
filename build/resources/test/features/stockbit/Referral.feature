#@Web @Referral @Test

#Feature: Referral Feature

#  @Positive @SuccessEditReferralCode
#  Scenario: User edits referral code successfully
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click edit kode referral
#    And User input kode referral "test00"
#    And User click simpan kode referral
#    Then User get alert "Berhasil Tersimpan"

#  @Negative @EditReferralCode @CodeAlreadyRegistered
#  Scenario: User saves a registered referral code
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click edit kode referral
#    And User input kode referral "JAGUNGBAKAR"
#    And User click simpan kode referral
#    Then User get alert "Kode referral sudah terdaftar"

#  @Negative @EditReferralCode @CodeLessThanMinimalChar
#  Scenario: User saves referral code with less than five characters
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click edit kode referral
#    And User input kode referral "HUHA"
#    And User click simpan kode referral
#    Then User get alert "Kode referral minimal 5 karakter"

#  @Positive @ShareReferralCode
#  Scenario: User shares a referral code successfully
#    Given User is on landing page
#    When User click menu login
#    And User input username as "0215casanova"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click share kode referral
#    Then Share kode referral modal is shown

#  @Positive @CopyReferralCode
#  Scenario: User copies a referral code successfully
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click copy kode referral
#    Then Kode referral is copied to clipboard

#  @Negative @ReferralCode @SingleRedemp @DontHaveStockbitSecuritas
#  Scenario: User failed to redeem because doesn't have sekuritas account
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click view redeem list
#    And User click tab "Teman Baru"
#    And User redeem first coupon
#    Then User is redirected to stockbit securitas challenge pin

#  @Negative @ReferralCode @SingleRedemp @HaveStockbitSecuritas
#  Scenario: User success to redemp coupon
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click view redeem list
#    And User click tab "Teman Baru"
#    And User redeem first coupon
#    And User input stockbit sekuritas pin "123456"
#    And User click submit stockbit sekuritas pin
#    And User click close sekuritas alert
#    And User klik reduce icon until 1 coupon
#    And User checklist "saya setuju untuk menerima saham dari stockbit..."
#    And User click tukar kupon
#    And User click selesai
#    Then User is on order cashback page
#    Then User is shown modal Tunggu Dulu

#  @Positive @ReferralCode @RedempHistory
#  Scenario: User redemp coupon history
#    Given User is on landing page
#    When User click menu login
#    And User input username as "rijkaard"
#    And User input password as "stockbit"
#    And User click button login
#    And User click header menu
#    And User click menu kode referral
#    And User click view redeem list
#    And User click tab "Riwayat"
#    Then User is on referral history page