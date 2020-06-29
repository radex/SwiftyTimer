import XCTest
@testable import SwiftyTimer

final class SwiftyTimerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftyTimer().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
