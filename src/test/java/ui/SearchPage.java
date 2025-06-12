package ui;

import io.appium.java_client.AppiumBy;
import net.serenitybdd.screenplay.targets.Target;

public class SearchPage {
    public static Target searchField = Target.the("Search field")
            .located(AppiumBy.accessibilityId("AppStore.searchField"));

    public static Target keyboardSearchBtn = Target.the("Keyboard search button")
            .locatedBy("//XCUIElementTypeButton[@name='Search']");

    public static Target searchResult(String appName) {
        return Target.the("Search result for app: " + appName)
                .located(AppiumBy.xpath("(//XCUIElementTypeButton[contains(@name, '" + appName + "')])[1]"));
    }

    public static Target todayTab = Target.the("Today tab")
            .located(AppiumBy.accessibilityId("AppStore.tabBar.today"));

    public static Target cancelSearchButton = Target.the("Cancel search button")
            .locatedBy("(//*[@name='Cancel'])[1]");
}



