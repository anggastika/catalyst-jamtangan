package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

public class ProductDetailPage extends BasePageObject {

    By btnBeliSkrg = By.xpath("//button[normalize-space()='Beli sekarang']");

    public void clickBeliSkrg(){
        scrollIntoView(btnBeliSkrg);
        clickOn(btnBeliSkrg);
    }

}
