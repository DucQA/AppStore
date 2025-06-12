package ui;

import net.serenitybdd.screenplay.targets.Target;

public class ReviewPage {
    public static Target reviewButton = Target.the("Review button")
            .locatedBy("//XCUIElementTypeButton[@name='Write a Review']");
    public static Target reviewTitleField = Target.the("Review title field")
            .locatedBy("//*[@name='Title']");
    public static Target reviewTextField = Target.the("Review text field")
            .locatedBy("//*[@name='Review']");
    public static Target submitReviewButton = Target.the("Submit review button")
            .locatedBy("(//*[@name='Submit'])[2]");
    public static Target cancelReviewButton = Target.the("Cancel review button")
            .locatedBy("(//*[@name='Cancel'])[2]");
}


