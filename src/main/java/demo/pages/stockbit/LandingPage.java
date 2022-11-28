package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import demo.webdriver.WebdriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

//class LandingPage
public class LandingPage extends BasePageObject {

    By btnLogin = By.xpath("//*[@id=\"login-button\"]");
    //By btnNanti = By.xpath("//*[@id=\"desktopBannerWrapped\"]/div/div[3]/div[2]/button[1]");
    By btnOk = By.xpath("//*[@id=\"driver-popover-item\"]/div[4]/button");
    public boolean isOnPage() {
        WebDriverWait wait = new WebDriverWait(WebdriverInstance.webdriver, 15);
        return wait.until(ExpectedConditions.presenceOfElementLocated(btnLogin))
                .isDisplayed();
    }

    public void clickMenuLogin() {
        clickOn(btnLogin);
    }


    public void clickBtnOk(){
        clickOn(btnOk);
    }


}
