package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

public class ShoppingChartPage extends BasePageObject {

    By btnLanjutkan = By.xpath("//button[normalize-space()='Lanjutkan']");

    public void clickBtnLanjutkan() {
        //scrollIntoView(btnLanjutkan);
        clickOn(btnLanjutkan);
    }

}
