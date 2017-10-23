import XCTest
import FPTF

class ScheduleTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "schedule",
            "id": "12345",
            "route": "1234",
            "mode": "bus",
            "sequence": [
                {
                    "arrival": -30,
                    "departure": 0
                },
                {
                    "arrival": 50,
                    "departure": 70
                },
                {
                    "arrival": 120,
                    "departure": 150
                }
            ],
            "starts": [
                1488379661,
                1488379761,
                1488379861,
                1488379961
            ]
        }
        """.data(using: .utf8)!

        do {
            let schedule = try JSONDecoder().decode(Schedule.self, from: json)
            XCTAssertEqual(schedule.id, "12345")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}

