# SwiftyTimer

SwiftyTimer is a set of extensions to make the `NSTimer` API cleaner, nicer to use, and at home with Swift's syntax.

Read [Swifty APIs: NSTimer](http://radex.io/swift/nstimer/) for more information about this project.

## Usage

You can easily schedule repeating and non-repeating timers (repeats and delays) using `NSTimer.every` and `NSTimer.after`:

```swift
NSTimer.every(0.7.seconds) {
    statusItem.blink()
}

NSTimer.after(1.minute) {
    println("Are you still here?")
}
```

SwiftyTimer uses closures instead of target/selector/userInfo.

You can specify time intervals with intuitive [Ruby on Rails](http://rubyonrails.org)-like helpers:

```swift
1.second
2.5.seconds
5.seconds
10.minutes
1.hour
```

You can pass method references instead of closures:

```swift
NSTimer.every(30.seconds, align)
```

If you want to make a timer object without scheduling, use `new(after:)` and `new(every:)`:

```swift
let timer = NSTimer.new(every: 1.second) {
    println(self.status)
}
```

(This should be defined as an initializer, but [a bug in Swift](http://www.openradar.me/18720947) prevents this)

Call `start()` to schedule timers created using `new`. You can optionally pass the run loop and run loop modes:

```swift
timer.start()
timer.start(modes: NSDefaultRunLoopMode, NSEventTrackingRunLoopMode)
```

## Installation

The simplest way to install this library is to copy `Src/SwiftyTimer.swift` to your project. There's no step two!

#### CocoaPods

You can also install this library using CocoaPods. Just add this line to your Podfile:

```ruby
pod 'SwiftyTimer'
```

Then import library module like so:

```swift
import SwiftyTimer
```

Note that this requires iOS 8 or OS X 10.9+

## More like this

If you like SwiftyTimer, check out [SwiftyUserDefaults](https://github.com/radex/SwiftyUserDefaults), which applies the same swifty approach to `NSUserDefaults`.

You might also be interested in my blog posts which explain the design process behind those libraries:
- [Swifty APIs: NSTimer](http://radex.io/swift/nstimer/)
- [Swifty APIs: NSUserDefaults](http://radex.io/swift/nsuserdefaults/)
- [Statically-typed NSUserDefaults](http://radex.io/swift/nsuserdefaults/static)
- [Swifty methods](http://radex.io/swift/methods/)

### Contributing

If you have comments, complaints or ideas for improvements, feel free to open an issue or a pull request.

### Author and license

Radek Pietruszewski

* [github.com/radex](http://github.com/radex)
* [twitter.com/radexp](http://twitter.com/radexp)
* [radex.io](http://radex.io)
* this.is@radex.io

SwiftyTimer is available under the MIT license. See the LICENSE file for more info.
