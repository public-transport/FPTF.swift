import XCTest
import FPTF

class StopTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "stop",
            "id": "12345678",
            "station": "123456",
            "name": "Berlin Hauptbahnhof (tief)",
            "coordinates": {
                "longitude": 52.5250839,
                "latitude": 13.3672133
            }
        }
        """.data(using: .utf8)!

        do {
            let stop = try JSONDecoder().decode(Stop.self, from: json)
            XCTAssertEqual(stop.name, "Berlin Hauptbahnhof (tief)")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}
