package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

import java.util.Set;

public class CataloguePage extends BasePageObject {

    By product = By.xpath("//div[@class='card relative rounded-2 bg-neutral-900 product-card-container cursor-pointer qa-product-card qa-product-card-0']//p[@class='text-sm text-neutral-0 font-normal leading-6 mb-1 h-12 product-name'][contains(text(),'Casio AE-1000W-1AVDF Sporty Digital Dial Black Res')]");
    By popUp = By.xpath("//*[@id=\"driver-popover-item\"]/div[4]/button");
    public void clickProduct(){
        clickOn(popUp);
        clickOn(product);
    }

}
