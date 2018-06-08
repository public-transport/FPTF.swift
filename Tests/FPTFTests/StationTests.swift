import XCTest
import FPTF

class StationTests: XCTestCase {
    func testDecoding() {
        let station: Station = try! JSON.decode(json: "station")

        XCTAssertEqual(station.type, "station")
        XCTAssertEqual(station.id, "123456")
        XCTAssertEqual(station.name, "Berlin Hauptbahnhof")
        XCTAssertEqual(station.regions!, ["1234", "2345"])

        let location = station.location!
        XCTAssertNil(location.name)
        XCTAssertEqual(location.address, "Europaplatz 1, 10557 Berlin")
        XCTAssertEqual(location.latitude!, 13.3, accuracy: 1.0)
        XCTAssertEqual(location.longitude!, 52.5, accuracy: 1.0)
        XCTAssertNil(location.altitude)
    }
}
