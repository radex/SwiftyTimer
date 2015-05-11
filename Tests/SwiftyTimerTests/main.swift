import Cocoa

let app = NSApplication.sharedApplication()

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        test()
    }
    
    func test() {
        assert(1.second == 1.0)
        assert(1.minute == 60.0)
        assert(1.hour == 1.minute * 60)
        assert(1.2.seconds == 1.2)
        assert(1.5.minutes == 90.0)
        assert(1.5.hours == 5400.0)
        test2()
    }
    
    func test2() {
        var fired = false
        NSTimer.after(0.1.seconds) {
            assert(!fired)
            fired = true
            self.test3()
        }
    }
    
    var timer1: NSTimer!
    
    func test3() {
        var fired = false
        timer1 = NSTimer.every(0.1.seconds) {
            if fired {
                self.test4()
                self.timer1.invalidate()
            } else {
                fired = true
            }
        }
    }
    
    let timer2 = NSTimer.new(after: 0.1.seconds) { fatalError() }
    let timer3 = NSTimer.new(every: 0.1.seconds) { fatalError() }
    
    func test4() {
        let timer = NSTimer.new(after: 0.1.seconds) {
            self.test5()
        }
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSDefaultRunLoopMode)
    }
    
    var timer4: NSTimer!
    
    func test5() {
        var fired = false
        timer4 = NSTimer.new(every: 0.1.seconds) {
            if fired {
                self.timer4.stop()
                self.test6()
            } else {
                fired = true
            }
        }
        timer4.start()
    }

    func test6() {
        NSTimer.after(0.1.seconds, done)
    }
    
    func done() {
        println("All tests passed")
        app.terminate(self)
    }
}

let delegate = AppDelegate()
app.delegate = delegate
app.run()