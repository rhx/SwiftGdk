import XCTest
@testable import Gdk

class GdkTests: XCTestCase {

    func testEvent() {
        let event = Event(type: .keyPress)
        XCTAssertEqual(event.type, event.event_ptr.pointee.type)
        XCTAssertEqual(event.type, EventType.keyPress)
    }

    func testEventType() {
        let doubleButton = EventType.doubleButtonPress
        XCTAssertEqual(doubleButton, EventType._2buttonPress)
    }

}

extension GdkTests {
    static var allTests : [(String, (GdkTests) -> () throws -> Void)] {
        return [
            ("testEvent",     testEvent),
            ("testEventType", testEventType),
        ]
    }
}
