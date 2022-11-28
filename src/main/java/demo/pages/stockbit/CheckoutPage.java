package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

import java.util.Set;

public class CheckoutPage extends BasePageObject {

    By btnPilihPengiriman = By.xpath("//button[@aria-label='Choose shipping method']");
    By jenisPengiriman = By.xpath("(//li[@class='bg-neutral-800 text-neutral-300 hover:text-primary-1 cursor-pointer py-4 pr-2 md:p-4 border-neutral-700 border-b-1'])[2]");

    By btnPilihPembayaran = By.xpath("//button[normalize-space()='Pilih Pembayaran']");

    public void choosePengiriman(){
        clickOn(btnPilihPengiriman);
        waitABit(4);
        clickOn(jenisPengiriman);
    }

    public void clickPembayaran(){
        clickOn(btnPilihPembayaran);
    }



}
