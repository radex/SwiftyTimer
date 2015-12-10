//
// SwiftyTimer
//
// Copyright (c) 2015 Oktawian Chojnacki and Radosław Pietruszewski
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation

private let milliDivider: Double    = 1000
private let secondsInMinute: Double = 60
private let minutesInHour: Double   = 60
private let hoursInDay: Double      = 24

extension Double {
    
    private func assertOneOrLess(value: Double) -> Double {
        assert(self <= 1, "🤓 Use plural property for numbers above 1.")
        return value
    }
    
    public var millisecond: NSTimeInterval  { return assertOneOrLess(milliseconds) }
    public var milliseconds: NSTimeInterval { return self / milliDivider }
    public var ms: NSTimeInterval           { return milliseconds }
    
    public var second: NSTimeInterval       { return assertOneOrLess(seconds) }
    public var seconds: NSTimeInterval      { return self }
    
    public var minute: NSTimeInterval       { return assertOneOrLess(minutes) }
    public var minutes: NSTimeInterval      { return self * secondsInMinute }
    
    public var hour: NSTimeInterval         { return assertOneOrLess(hours)}
    public var hours: NSTimeInterval        { return minutes * minutesInHour }
    
    public var day: NSTimeInterval          { return assertOneOrLess(days) }
    public var days: NSTimeInterval         { return hours * hoursInDay }
}
