package demo.pages.base;

import demo.webdriver.WebdriverInstance;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.interactions.touch.TouchActions;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.time.temporal.TemporalUnit;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

//class BasePageObject
public class BasePageObject {

    public WebDriver getDriver() {
        return WebdriverInstance.webdriver;
    }


    public void openAt(String path) {
        this.getDriver().get(path);
    }


    public Integer getExplicitTimeout() {
        return 15;
    }


    public void setPageLoadTimeout(Integer seconds) {
        getDriver().manage().timeouts().pageLoadTimeout(seconds, TimeUnit.SECONDS);
    }


    public void setScriptTimeout(Integer seconds) {
        getDriver().manage().timeouts().setScriptTimeout(seconds, TimeUnit.SECONDS);
    }


    public WebElement waitUntil(ExpectedCondition<WebElement> conditions, Integer timeout) {
        WebDriverWait wait = new WebDriverWait(getDriver(), timeout);
        return wait.until(conditions);
    }

    public WebElement waitUntil(ExpectedCondition<WebElement> conditions) {
        return waitUntil(conditions, getExplicitTimeout());
    }

    public WebElement waitUntilClickable(By by) {
        return waitUntil(ExpectedConditions.elementToBeClickable(by), getExplicitTimeout());
    }

    public WebElement waitUntilClickable(By by, Integer timeout) {
        return waitUntil(ExpectedConditions.elementToBeClickable(by), timeout);
    }

    public WebElement waitUntilVisible(By by) {
        return waitUntil(ExpectedConditions.visibilityOfElementLocated(by), getExplicitTimeout());
    }

    public List<WebElement> waitAllUntilPresent(By by) {
        WebDriverWait wait = new WebDriverWait(getDriver(), getExplicitTimeout());
        return wait.until(ExpectedConditions.presenceOfAllElementsLocatedBy(by));
    }

    public WebElement waitUntilVisible(By by, Integer timeout) {
        return waitUntil(ExpectedConditions.visibilityOfElementLocated(by), timeout);
    }

    public WebElement waitUntilPresent(By by) {
        return waitUntil(ExpectedConditions.presenceOfElementLocated(by), getExplicitTimeout());
    }

    public WebElement waitUntilPresent(By by, Integer timeoutInSeconds) {
        return waitUntil(ExpectedConditions.presenceOfElementLocated(by), timeoutInSeconds);
    }

    public Boolean waitUntilInvisible(By by, Integer timeout) {
        WebDriverWait wait = new WebDriverWait(getDriver(), timeout);
        return wait.until(ExpectedConditions.invisibilityOfElementLocated(by));
    }

    public Boolean waitUntilInvisible(By by) {
        return waitUntilInvisible(by, getExplicitTimeout());
    }

    public void clickOn(By by, Integer timeoutInSeconds) {
        waitUntilClickable(by, timeoutInSeconds).click();
    }

    public void clickOn(By by) {
        clickOn(by, getExplicitTimeout());
    }

    public WebElement find(By by) {
        return waitUntilPresent(by);
    }

    public WebElement find(String cssSelector) {
        return waitUntilPresent(By.cssSelector(cssSelector));
    }

    public List<WebElement> findAll(By by) {
        return waitAllUntilPresent(by);
    }

    public void typeOn(By by, String text) {
        WebElement element = waitUntilVisible(by);
        element.clear();
        element.sendKeys(text);
    }

    public void clear(By by) {
        waitUntilVisible(by).clear();
    }

    public Actions withActions() {
        return new Actions(getDriver());
    }

    public void maximize() {
        getDriver().manage().window().maximize();
    }

    public void fullScreen() {
        getDriver().manage().window().fullscreen();
    }

    public void setScreenSize(Integer width, Integer height) {
        Dimension d = new Dimension(width, height);
        getDriver().manage().window().setSize(d);
    }

    public String getTitle() {
        return getDriver().getTitle();
    }

    public Object evaluateJavascript(String script, Object args) {
        JavascriptExecutor jse = ((JavascriptExecutor) getDriver());
        return jse.executeScript(script, args);
    }

    public Alert getAlert() {
        return getDriver().switchTo().alert();
    }

    public void switchToDefaultContent() {
        getDriver().switchTo().defaultContent();
    }

    public Set<String> getWindowHandles() {
        return getDriver().getWindowHandles();
    }

    public void switchTo(String name) {
        getDriver().switchTo().window(name);
    }

    public String getCurrentUrl() {
        return getDriver().getCurrentUrl();
    }

    public void selectByVisibleText(By by, String text) {

        new Select(find(by)).selectByVisibleText(text);
    }

    public void selectByVisibleText(String cssSelector, String text) {
        new Select(find(cssSelector)).selectByVisibleText(text);
    }

    public void selectByValue(String cssSelector, String value) {
        new Select(find(cssSelector)).selectByValue(value);
    }

    public void selectByValue(By by, String value) {
        new Select(find(by)).selectByValue(value);
    }

    public void selectByIndex(String cssSelector, Integer index) {
        new Select(find(cssSelector)).selectByIndex(index);
    }

    public void selectByIndex(By by, Integer index) {
        new Select(find(by)).selectByIndex(index);
    }

    public void deselectAll(String cssSelector) {
        new Select(find(cssSelector)).deselectAll();
    }

    public void deselectAll(By by) {
        new Select(find(by)).deselectAll();
    }

    public Select select(By by) {
        return new Select(find(by));
    }

    public Select select(String cssSelector) {
        return new Select(find(cssSelector));
    }

    public Boolean isVisible(By by) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 3);
            wait.ignoring(NoSuchElementException.class);
            wait.ignoring(ElementNotVisibleException.class);
            wait.ignoring(StaleElementReferenceException.class);
            wait.ignoring(NoSuchFrameException.class);

            wait.until(ExpectedConditions.visibilityOfElementLocated(by));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Boolean isClickable(By by) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 3);
            wait.ignoring(NoSuchElementException.class);
            wait.ignoring(ElementNotVisibleException.class);
            wait.ignoring(StaleElementReferenceException.class);
            wait.ignoring(NoSuchFrameException.class);

            wait.until(ExpectedConditions.elementToBeClickable(by));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Boolean isPresent(By by) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 3);
            wait.ignoring(NoSuchElementException.class);
            wait.ignoring(ElementNotVisibleException.class);
            wait.ignoring(StaleElementReferenceException.class);
            wait.ignoring(NoSuchFrameException.class);

            wait.until(ExpectedConditions.presenceOfElementLocated(by));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Boolean isNested(WebElement element, By by) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 3);
            wait.ignoring(NoSuchElementException.class);
            wait.ignoring(ElementNotVisibleException.class);
            wait.ignoring(StaleElementReferenceException.class);
            wait.ignoring(NoSuchFrameException.class);

            wait.until(ExpectedConditions.presenceOfNestedElementLocatedBy(element, by));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Boolean isDisplayed(By by) {
        return find(by).isDisplayed();
    }

    public Boolean isDisplayed(String cssSelector) {
        return find(cssSelector).isDisplayed();
    }

    public Boolean isEnabled(By by) {
        return find(by).isEnabled();
    }

    public Boolean isEnabled(String cssSelector) {
        return find(cssSelector).isEnabled();
    }

    public String getText(By by) {
        return find(by).getText();
    }

    public WebElement getText(By by, String attributeName) {
        return waitUntilPresent(by);
    }

    public String getText(String cssSelector) {
        return find(cssSelector).getText();
    }

    public String getAttribute(By by, String attributeName) {
        return find(by).getAttribute(attributeName);
    }

    public String getAttribute(String cssSelector, String attributeName) {
        return find(cssSelector).getAttribute(attributeName);
    }

    public void waitABit(Integer seconds) {
        try {
            Thread.sleep(Duration.ofSeconds(seconds).toMillis());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void waitABit(Integer waitTime, TemporalUnit unit) {
        try {
            Thread.sleep(Duration.of(waitTime, unit).toMillis());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public TouchActions getTouchActions() {
        return new TouchActions(getDriver());
    }

    public void scrollIntoView(WebElement element) {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("arguments[0].scrollIntoView();", element);
    }

    public void scrollIntoView(By locator) {
        WebElement element = find(locator);
        scrollIntoView(element);
    }

    public void scrollByPixels(int x, int y) {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("window.scrollBy(" + x + ", " + y + ");");
    }

    public void scrollByPixels(By by, int x, int y) {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("arguments[0].scrollBy(" + x + ", " + y + ");", find(by));
    }

    public void scrollToBottom() {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("window.scrollTo(0, document.body.scrollHeight)");
    }

    public void scrollToBottom2() {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("window.scrollTo(0,500)");
    }

    public void scrollToBottomOfDiv(By by) {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("arguments[0].scrollTo(0, arguments[0].scrollHeight)", find(by));
    }

    public void scrollToTop() {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("window.scrollTo(0, 0);");
    }

    public void scrollToTopOfDiv(By by) {
        JavascriptExecutor js = (JavascriptExecutor) getDriver();
        js.executeScript("arguments[0].scrollTo(0, 0)", find(by));
    }

    public void selectData(By listdropdown, By itemSelected, String data) {
        //klik dulu contentnya
        //ambil list dropdown
        List<String> listDropdown = findAll(listdropdown).stream()
                .map(el -> el.getAttribute("textContent")).collect(
                        Collectors.toList());
        //ambil selected element
        WebElement selectedElement = find(itemSelected);
        Integer indexSelected = listDropdown.indexOf(selectedElement.getText());
        Integer indexData = listDropdown.indexOf(data);
        if (indexSelected < indexData) {
            for (int i = indexSelected; i <= indexData; i++) {
                WebElement el = find(itemSelected);
                new Actions(getDriver()).dragAndDropBy(el, 0, -25).perform();
                waitABit(1);
                if (getText(itemSelected).equals(data)) {
                    break;
                }
            }
        } else {
            for (int i = indexSelected; i >= indexData; i--) {
                WebElement el = find(itemSelected);
                new Actions(getDriver()).dragAndDropBy(el, 0, 25).perform();
                waitABit(1);
                if (getText(itemSelected).equals(data)) {
                    break;
                }
            }
        }
    }

    public void selectData(String data, int offset) {
        By listDropdown = By
                .xpath(String.format("//div[@class='am-picker-col'][%d]//div[contains(@class, 'am-picker-col-item')]", offset));
        By itemSelected = By.xpath(String.format(
                "//div[@class='am-picker-col'][%d]//div[@class='am-picker-col-item am-picker-col-item-selected ']", offset));
        selectData(listDropdown, itemSelected, data);
    }

    public void mouseOver(By by) {
        Actions act = new Actions(getDriver());
        act.moveToElement(find(by));
        act.build().perform();
    }
}
