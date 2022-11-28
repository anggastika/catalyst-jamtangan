package demo.webdriver;

import java.util.concurrent.TimeUnit;
import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;


//class WebDriverInstance
public class WebdriverInstance {

    public static WebDriver webdriver;

    public static void initialize()  {

        ChromeOptions option=new ChromeOptions();
        option.setPageLoadStrategy(PageLoadStrategy.NONE);
        webdriver = new ChromeDriver(option);
        webdriver.manage().window().maximize();
        webdriver.manage().deleteAllCookies();
        webdriver.get("https://jamtangan.com");
        webdriver.manage().timeouts()
        .implicitlyWait(5, TimeUnit.SECONDS);



    }

    public static void quit() {
        webdriver.quit();
    }

}
