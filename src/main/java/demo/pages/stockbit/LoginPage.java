package demo.pages.stockbit;

import demo.pages.base.BasePageObject;
import org.openqa.selenium.By;

import java.util.Set;

//class LoginPage
public class LoginPage extends BasePageObject {

    By inputUsername = By.name("username");
    By inputPassword = By.name("password");
    By btnMasuk = By.xpath("//*[@id=\"modal-root\"]/div/div/div/div/div/div/div/form/button");


    public void inputUsername(String username) {
        typeOn(inputUsername, username);
    }


    public void inputPassword(String password) {
        typeOn(inputPassword, password);
    }


    public void clickBtnMasuk() {clickOn(btnMasuk);}




}
