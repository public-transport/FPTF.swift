import XCTest
import FPTF

class ScheduleTests: XCTestCase {
    func testDecoding() {
        let schedule: Schedule = try! JSON.decode(json: "schedule")

        XCTAssertEqual(schedule.id, "12345")
    }
}

