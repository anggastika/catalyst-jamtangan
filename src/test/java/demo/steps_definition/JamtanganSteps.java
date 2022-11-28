package demo.steps_definition;

import demo.pages.stockbit.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class JamtanganSteps {
    LandingPage landingPage = new LandingPage();
    LoginPage loginPage = new LoginPage();
    MainPage mainPage = new MainPage();
    ShoppingChartPage shoppingChartPage = new ShoppingChartPage();

    CataloguePage cataloguePage = new CataloguePage();

    ProductDetailPage productDetailPage = new ProductDetailPage();
    CheckoutPage checkoutPage = new CheckoutPage();
    PaymentPage paymentPage = new PaymentPage();

    @Given("User is on landing page")
    public void userIsOnLandingPage() {
        Assert.assertTrue(landingPage.isOnPage());
        //landingPage.clickBtnNanti();
        landingPage.clickBtnOk();
    }

    @When("User click menu login")
    public void userClickMenuLogin() {
        landingPage.clickMenuLogin();
    }

    @And("User input username as {string}")
    public void userInputUsernameAs(String username) {
        loginPage.inputUsername(username);
    }

    @And("User input password as {string}")
    public void userInputPasswordAs(String password) {
        loginPage.inputPassword(password);
    }

    @And("User click button masuk")
    public void userClickButtonMasuk() {
        loginPage.clickBtnMasuk();
    }

    @Then("User is on homepage")
    public void userIsOnHomepage() {
        Assert.assertTrue(mainPage.isOnPage());
    }


    @And("User input search as {string}")
    public void userInputSearch(String srch) {mainPage.inputSearch(srch);}

    @And("User click loup icon")
    public void userClickLoup() {mainPage.clickLoup();}

    @And("User click product")
    public void userClickProduct() {cataloguePage.clickProduct();}

    @And("User click Beli Sekarang")
    public void userClickBeliSkrg() {productDetailPage.clickBeliSkrg();}

    @And("User click Lanjutkan")
    public void userClickLanjutkan() {
        shoppingChartPage.clickBtnLanjutkan();
    }

    @And("User Pilih Pengiriman")
    public void userClickPilihPengiriman(){
        checkoutPage.choosePengiriman();
    }

    @And("User click Pembayaran")
    public void userClickPembayaran(){
        checkoutPage.clickPembayaran();
    }

    @And("User choose VA BCA")
    public void userChooseVaBca(){
        paymentPage.clickPaymentMethod();
    }

    @And("User click Order")
    public void userClickOrder(){
        paymentPage.clickBtnOrderSkrg();
    }

    @Then("User get bill payment information {string}")
    public void userGetBillPayment(String info) {
        Assert.assertEquals(info, paymentPage.getInfoBill());
    }

}

