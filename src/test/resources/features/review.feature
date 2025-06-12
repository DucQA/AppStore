Feature: Search and review 10 apps on Apple App Store

  Background:
    Given I am logged into the Apple App Store

  Scenario Outline: Search and review an app
    Given I search for "<keyword>"
    Then I should see "<appName>" in the search results
    Then I review "<appName>" with title "<reviewTitle>" and text "<reviewContent>"

    Examples:
      | keyword         | appName         | reviewTitle              | reviewContent                                                          |
      | windy           | Windy           | Accurate and Reliable    | A great app for checking the weather daily with detailed forecasts.    |
      | spotify         | Spotify         | Amazing Music Experience | The app is perfect for streaming my favorite songs without any issues. |
      | fitbod          | Fitbod          | Best Workout Planner     | Helps me track and plan my gym sessions effectively.                   |
      | revolut         | Revolut         | Great Banking App        | Easy to transfer money and manage finances all in one place.           |
      | evernote        | Evernote        | Productivity Booster     | Keeps all my notes organized and synced across devices.                |
      | google calendar | Google Calendar | Simple & Effective       | Love the reminders and integration with Gmail.                         |
      | tripit          | TripIt          | Travel Made Easy         | Automatically builds my itineraries — super helpful when traveling!    |
      | halide          | Halide          | Pro Camera App           | Excellent manual controls for professional photography.                |
      | amazon          | Amazon          | A Must-Have App          | Fast, convenient, and secure shopping on the go.                       |
      | outlook         | Outlook         | Very Functional          | Handles all my work and personal emails flawlessly.                    |
      | khan academy    | Khan Academy    | Excellent Resource       | Free and high-quality learning content for all ages.                   |
      | tasty           | Tasty           | Inspiring Recipes        | Easy-to-follow recipes with step-by-step videos!                       |
      | ynab            | YNAB            | Changed My Finances      | Finally a budgeting app that actually works!                           |
      | news            | Google News     | Great Customization      | Curated news that fits my interests well.                              |







