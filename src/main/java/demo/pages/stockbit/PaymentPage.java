package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

public class PaymentPage extends BasePageObject{

    By vaPaymentMethod = By.xpath("//div[@data-testid='payment-item-VirtualAccount']");
    By btnOrderSkrg = By.xpath("//button[normalize-space()='order sekarang']");

    By billPaymentInfo = By.xpath("//div[@class='col-span-2 md:col-span-4 text-right md:text-left py-4 md:py-1 text-primary-1 md:text-neutral-300 text-base font-black md:font-bold md:text-4xl']");

    public void clickPaymentMethod(){
        clickOn(vaPaymentMethod);
    }

    public void clickBtnOrderSkrg(){
        clickOn(btnOrderSkrg);
    }

    public String getInfoBill(){
        return getText(billPaymentInfo);
    }


}
