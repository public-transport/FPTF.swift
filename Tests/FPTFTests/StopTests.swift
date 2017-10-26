import XCTest
import FPTF

class StopTests: XCTestCase {
    func testDecoding() {
        let stop: Stop = try! JSON.decode(json: "stop")

        XCTAssertEqual(stop.id, "12345678")
        XCTAssertEqual(stop.station, .reference("123456"))
        XCTAssertEqual(stop.id, "12345678")
        XCTAssertEqual(stop.name, "Berlin Hauptbahnhof (tief)")

        let location = stop.location!
        XCTAssertNil(location.name)
        XCTAssertNil(location.address)
        XCTAssertEqual(location.latitude!, 13.3, accuracy: 1.0)
        XCTAssertEqual(location.longitude!, 52.5, accuracy: 1.0)
        XCTAssertNil(location.altitude)
    }
}
