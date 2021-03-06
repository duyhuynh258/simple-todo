# Simple Todo App

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Generated by the [Very Good CLI][very_good_cli_link] 🤖


# Source code explanation

## Features:
- [x] Sign In with google, sign up with email, verify email, reset password, logout (firebase).
- [x] Add / complete / uncompleted tasks.
- [x] Save tasks to local database.
- [x] Auto save when creating/updating tasks
- [x] Home UI with three screens for uncompleted(todo), completed (done) and all tasks.
- [ ] Delete tasks.
- [ ] Sync with firebase.
- [ ] Light/Dark theme (50% done).

## Environments, dependencies & references:
- Flutter version 2.5.0 null-safety.
- Use Android Studio as IDE.
- Use fvm for multiple flutter versions.
- Flutter project generated by Very Good CLI.
- Remote database Firebase FireStore.
- Authenticating using Firebase.
- Local database Sembast. 
- UI color theme refers to published app “Đại Chiến 360”
- Heavily depends on freezed package for code generation.
- Architecture refers to Resocoder tutorials.
- Use flutter_bloc package for state management.
- Use RepositoryProvider (flutter_bloc package) for DI.
- Use dartz package for functional programming.

## Major decision making:
1. Why choose another local database instead of FireStore offline?

- If we use Firestore as an out-of-the-box solution, whenever we face corner cases, we will need to wait for their support, hopefully the problem could be solved. In the future, we can move our remote database to another NoSQL database easily. Which is not possible if we use an out-of-the-box FireStore offline solution.

2. Why choose Sembast?

- Sembast uses concepts that are very familiar with FireStore. It could help us boost the project faster.

3. Why use code generation?

- With supporting union type, deep comparison, auto immutable data class, and tons of other things that help improve project productivity, it’s worth it.

4. Why choose Bloc for state management?

- I have more experience with Bloc. Also, some features of the project would need streams, that is what Bloc does better than just Provider or StateNotifier. 

## Architecture:
Using clean architecture to organize code base into Domain, Presentation, Application and Infrastructure layer.

## Unit Testing cases:
- [x] Empty tasks will not be saved (bloc test).
- [x] Can only create one empty draft task at one time (bloc test).
- [x] Test TaskWatcherBloc when completed / uncompleted task (bloc test).

## Widget Testing cases:
- [x] Pump widget supports DI for mocks.
- [ ] Create task button will hide when creating or editing tasks.
- [ ] Tasks will not show duplicated in one screen.
- [ ] Task will display on the right screen regarding status.

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Simple Todo App works on iOS, Android, and Web._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
