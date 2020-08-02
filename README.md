# flutter_boilerplate

This repository is a boilerplate for flutter project.

# What are included?

## Useful lib for setting app launcher icon.
A lib `flutter_launcher_icons` is for create Android and iOS launcher icons from one image files.

### Use when?
After adding or updating a launcher icon file for your app.

### How to use?
1. Put a image file in `icon/`.
1. Run `flutter pub run flutter_launcher_icons:main`

See [this lib's pub.dev page](https://pub.dev/packages/flutter_launcher_icons) about more details.

## Build shell script for building the release resources.
Bash script to create Android and iOS release build at once.

### Use when?
Before submitting your app to Google Play Console or Apple AppStore Connect.

### How to use?
1. Run `build.sh`
1. The resources are created to sub directories under `build/`. See the log to where Android and iOS resources.
1. For Android, upload `.aab` file to Google play console via your browser.
1. For iOS, upload `.ipa` file to AppStore console via [Apple's Transpoter app](https://apps.apple.com/jp/app/transporter/id1450874784?mt=12).

## Static code check for VSCode
By using `pedantic_mono`, show warning or automatically apply suitable formatting to your code.

### Use when?
Always. VS Code will apply code check automatically.

### How to use?
Automatically apply. But if you want to modify the rules to make them suitable for your style, see [this lib's pub.dev](https://pub.dev/packages/pedantic_mono).

## File scope adjustment script for test coverage.
I don't know the reason, but `flutter test --coverage` will count the total lines to calculate the coverage based on only production code which referenced from test code.

So, very beginning of testing, flutter test command shows an useless coverage information like 100% or 90% coverage even if almost all of production code actually not tested.

To fix this issue, use the idea from [this stack overflow answer]((https://stackoverflow.com/questions/54602840/how-can-i-generate-test-coverage-of-untested-files-on-my-flutter-tests).).

### Use when?
When production code **files** are added or deleted.

### How to use?
1. Run `dart_full_coverage.sh`
