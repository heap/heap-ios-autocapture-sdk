# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.1]

### Fixed

- Updated minimum HeapSwiftCore CocoaPods version to 0.2 so it's not pinned to 0.1.x.

## [0.2.0]

### Added

- Added Objective-C access to the register function.
- Added support for capturing other component change events while `UITextField` and `UITextView` are active.

### Fixed

- Fixed capture of bar button item text.
- Relaxed filtering rules to capture `_` prefixed selectors in Target Selector.
- Fixed an issue where `textFieldShouldBeginEditing` was being called an extra time
  when switching between text fields.
  ([heap/heap-ios-autocapture-sdk#1](https://github.com/heap/heap-ios-autocapture-sdk/issues/1))
- Fixed duplicate pageview that could occur if a session was started by a
  view controller appearing.

## [0.1.2]

### Fixed

- Restructured package so HeapSwiftCore can be used as a dependency.

## [0.1.1]

### Fixed

- Fixed error when sending nil to certain sendEvent arguments.

## [0.1.0]

### Added

- Autocapture SDK targeting iOS 13.0+ and Xcode 14.0+.

[0.2.1]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.2.1
[0.2.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.2.0
[0.1.2]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.2
[0.1.1]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.1
[0.1.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.0
