package ui;

import io.appium.java_client.AppiumBy;
import net.serenitybdd.screenplay.targets.Target;

public class HomePage {
    public static Target searchTab = Target.the("Search tab")
            .located(AppiumBy.accessibilityId("AppStore.tabBar.search"));
}


