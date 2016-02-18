# Codecov integration

[Codecov](https://codecov.io) integration

## How to use this Step

### Unit tests coverage reports

Codecov parses uploaded test coverage reports but your project is required to generate them first.
You can use [jacoco-android-gradle-plugin](https://github.com/arturdm/jacoco-android-gradle-plugin)
to create appropriate gradle tasks and run this command to generate the reports:

```
./gradlew jacocoTestReport
```

### Instrumentation tests coverage reports

Generating instrumentation tests code coverage reports requires a minor change to the build script.

```groovy
android {
  buildTypes {
    debug {
      testCoverageEnabled true
    }
  }
}
```

Running the command below generates the reports: 

```
./gradlew connectedCheck
```
