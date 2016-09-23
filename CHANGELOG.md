### 2.0.0 (2016-09-23)

This is the Swift 3 update version.

It contains no major changes in the library itself, however it does change some APIs because of Swift 3 requirements.

- Updated for Swift 3 and Xcode 8 compatibility #28 @ldiqual

### 1.4.1 (2016-08-03)

- Add support for Xcode 8 (Swift 2.3) for Carthage users

### 1.4.0 (2016-04-10)

- Add a variant of `every` and `new(every:)` that takes a closure with `NSTimer` passed in
- Fix Carthage support for Mac (set deployment target to 10.9)

### 1.3.1 (2016-03-02)

- Added support for Swift Package Manager
- Refactoring (Removed NSTimerActor. Used CFRunLoopTimerCreateWithHandler instead.) #22 @Austinate
- Added Travis CI

### 1.3.0 (2016-02-29)

- Add Carthage support
- Add tvOS and watchOS support

### 1.2.0 (2015-09-18)

- Update to Swift 2
- Add millisecond helper (`100.ms`)

### 1.1.0 (2015-05-13)

- Add `start(runLoop:, modes:)`
- Refactoring

### 1.0.0 (2015-05-11)

- Initial release
- `NSTimer.after(...)` and `NSTimer.every(...)`
- `NSTimer.new`
- Ruby on Rails-inspired time helpers like (5.seconds or 1.minute)