package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import demo.webdriver.WebdriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.ArrayList;

public class MainPage extends BasePageObject {

    By inputSearch = By.xpath("//input[@placeholder='Cari HGN Extra Sale']");
    By btnSearch = By.xpath("//button[@aria-label='Search']");
    public boolean isOnPage() {
        WebDriverWait wait = new WebDriverWait(WebdriverInstance.webdriver, 30);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id=\"app\"]/div/div[1]/div[2]/div/div[3]/div[3]/div/div")))
                .isDisplayed();
    }

    public void clickMenu(By by) {
        if (!isVisible(by)) clickOn(By.className("navmore"));
        clickOn(by);
    }



    public void inputSearch(String srch) {
        typeOn(inputSearch, srch);
    }

    public void clickLoup(){
        clickOn(btnSearch);
    }
}
