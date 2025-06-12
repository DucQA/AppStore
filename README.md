# Apple App Store Review Automation

This project automates the process of searching and reviewing apps on the Apple App Store using Serenity BDD Screenplay, Appium, and Java. It is designed for automated UI testing of mobile applications, ensuring that search and review functionalities work as expected.

Click the image below to watch a demo of the project in action:

[![Watch the demo](assets/output.gif)](https://www.youtube.com/watch?v=UoQZukVsrRk)

## Features

- Automated search for multiple apps on the Apple App Store.
- Automated submission of reviews for each app.
- Data-driven testing using Cucumber Scenario Outlines.
- Modular, maintainable test code using the Screenplay pattern.
- Cross-platform mobile automation with Appium.

## Tech Stack

- **Java**: Main programming language.
- **Maven**: Build and dependency management.
- **Serenity BDD Screenplay**: Test automation framework for readable, maintainable tests.
- **Cucumber**: BDD feature files and step definitions.
- **Appium**: Mobile automation for iOS devices.

## Project Structure

- `src/test/resources/features/review.feature`: Gherkin feature file describing search and review scenarios.
- `src/test/java/stepDefinitions/`: Step definitions implementing the feature steps.
- `src/test/java/tasks/`: Screenplay tasks for user actions (search, review).
- `src/test/java/questions/`: Screenplay questions for assertions.
- `src/test/java/Hooks.java`: Test setup and teardown (Appium driver, etc.).

## Getting Started

### Prerequisites

- Java 11 or higher
- Maven 3.6+
- Node.js & Appium server installed (`npm install -g appium`)
- Xcode and iOS real device (for macOS)
- Apple App Store test account credentials

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/DucQA/AppStore
   cd <path-to-cloned-repo>
   ```

2. **Install dependencies:**
   ```sh
   mvn clean install
   ```

3. **Start Appium server:**
   ```sh
   appium
   ```

4. **Configure Appium capabilities:**
    - Edit `src/test/resources/serenity.conf` or your driver setup to match your device/simulator.

### Running the Tests

To execute all tests and generate a Serenity report:
```sh
mvn clean verify
```

Test results and reports will be available in `target/site/serenity/index.html`.

## Writing Tests

Feature files are written in Gherkin syntax. Example (`review.feature`):

```gherkin
Feature: Search and review apps on Apple App Store

   Background:
      Given I am logged into the Apple App Store

   Scenario Outline: Search and review an app
      Given I search for "<keyword>"
      Then I should see "<appName>" in the search results
      Then I review "<appName>" with title "<reviewTitle>" and text "<reviewContent>"

      Examples:
         | keyword  | appName  | reviewTitle            | reviewContent                                                       |
         | windy    | Windy    | Accurate and Reliable  | A great app for checking the weather daily with detailed forecasts. |
      ...
```

## Screenplay Pattern

- **Actors**: Represent users (e.g., `user`).
- **Tasks**: Actions performed by actors (e.g., `Search`, `Review`).
- **Questions**: Assertions about the app state (e.g., `SearchResult`).

## Customization

- Add or modify app review scenarios in the feature file.
- Implement new tasks or questions as needed for additional test coverage.

## Reporting

After running tests, open the Serenity report:
```
open target/site/serenity/index.html
```

## Troubleshooting

- Ensure Appium server is running and device/simulator is available.
- Check device capabilities in your configuration.
- Review logs in `target/serenity` for debugging.

