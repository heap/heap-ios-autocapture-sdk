# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.10.0]

### Changed

- View controllers that are 100% covered by a child view controller no longer receive screenviews
  by default.  This reduces noisy pageviews for intermediate SwiftUI view controllers.
- As a result of the above, taps on navigation and tab elements in SwiftUI will be better
  attributed to the screenview representing app contents.

### Added

- `UIViewController.isImplicitHeapContainer`, a getter that returns true if the view controller is
  completely covered by a single child view controller that is also a container.

## [0.9.1]

### Fixed

- Fixed a crash when calling `AttributedString(localized:)` with an interpolated string.

### Changed

- Taps inside `WKWebView` are now ignored by default because they don't contain meaningful data
  and produce noise when integrating with tag capture.  To restore capture on a specific view,
  use `webView.heapIgnoreInteractions = false`.

## [0.9.0]
  
### Added

- Improved support for SwiftUI.

### Fixes

- When a `UITextView` is editable, the taps will always be attributed to the text view and not
  subviews.
- Heap will no longer capture screenviews in the text effects window.
- `UITextField` no longer creates a pageview on focus.

### Changed

- To support the `UITextField` fix, and catch the class of issue, Heap will only issue pageviews
  for view controllers that exist within the standard hierarchy.  That is to say calling `parent`
  and `presentingViewController` from a view controller should eventually resolve to a its window's
  `rootViewController`.

## [0.8.0]

### Changed

- Set minimum HeapSwiftCore version to 0.8.0.
- `heapRedactText` now automatically redacts accessibility labels in the same scope, overriding
  `heapReactAccessibilityLabel`.  This reduces the risk of accidental text collection on sensitive
  elements.

## [0.7.0]

### Changed

- Bumped the HeapSwiftCore dependency to 0.7.0.

### Changed

## [0.5.0]

### Fixed

- Fixed code signing when targeting Catalyst. The issue was caused by the zip file not preserving
  symlinks.

### Changed

- "Target IVar" capture is now disabled by default since certain code patterns can cause Swift's
  `Mirror` to crash.  This can be re-enabled by starting Heap with
  `.enableInteractionReferencingPropertyCapture: true`.

## [0.4.0]

### Fixed

- Fixed a bug where Heap could remove action listeners on custom subclasses of `UIControl`, when
  the target of the action listener was the control.
  ([heap/heap-ios-autocapture-sdk#2](https://github.com/heap/heap-ios-autocapture-sdk/issues/2))

- Fixed a bug where pageview view controller names did not reflect naming changes made in 0.3.0.

### Added

- Added open `heapText`, `heapTextChildren`, and `heapTextRecursionVisibility`
   variables to `UIView` to support overriding **Target Text** on custom views.

## [0.3.0]

### Added

- Added option `.useObjectiveCClassNames` to use Classic SDK naming logic for view and view
  controller names.  This option will be useful for Classic SDK users when evaluating the new
  autocapture SDK, as names will be consistent with existing event definitions for views.

### Changed

- Updated view and view controller names to include parent types, such as `enum` or
  `struct` when used for code organization.
  
  For example, the following code will produce `Home.ViewController` instead of `ViewController`:
  
  ```swift
  enum Home {
      class ViewController: UIViewController { ... }
  }
  ```

- Increased HeapSwiftCore dependency from 0.1.2 to 0.3.0 to ensure
  improvements are automatically included when updating.
  
- When a control has multiple actions, the first action that is called will be used for
  **Action Method**, rather than the last.  This matches the behavior of the Classic SDK.

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

[0.10.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.10.0
[0.9.1]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.9.1
[0.9.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.9.0
[0.8.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.8.0
[0.7.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.7.0
[0.5.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.5.0
[0.4.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.4.0
[0.3.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.3.0
[0.2.1]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.2.1
[0.2.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.2.0
[0.1.2]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.2
[0.1.1]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.1
[0.1.0]: https://github.com/heap/heap-ios-autocapture-sdk/releases/tag/0.1.0
