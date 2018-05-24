import XCTest
import FPTF

class ScheduleTests: XCTestCase {
    func testDecoding() {
        let schedule: Schedule = try! JSON.decode(json: "schedule")

        XCTAssertEqual(schedule.type, "schedule")
        XCTAssertEqual(schedule.id, "12345")
        XCTAssertEqual(schedule.route, .reference("1234"))
        XCTAssertEqual(schedule.mode, .bus)
        XCTAssertEqual(schedule.starts, [1488379661, 1488379761, 1488379861, 1488379961])

        let element = schedule.sequence.first!
        XCTAssertEqual(element.arrival, -30)
        XCTAssertEqual(element.departure, 0)

        let last = schedule.sequence.last!
        XCTAssertNotNil(last.arrival)

        for el in schedule.sequence[..<(schedule.sequence.count - 1)] {
            XCTAssertNotNil(el.departure)
        }

        do {
            try schedule.validate()
        } catch {
            print(error)
        }
    }

    func testInvalid() {
        let element = Schedule.Element(arrival: 0, departure: 2)
        var schedule = Schedule(id: "123", route: .reference("123"), mode: .aircraft, sequence: [element], starts: [0])

        schedule.sequence[0].arrival = nil
        XCTAssertThrowsError(try schedule.validate())
    }
}

