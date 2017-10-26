import XCTest
import FPTF

class StationTests: XCTestCase {
    func testDecoding() {
        let station: Station = try! JSON.decode(json: "station")

        XCTAssertEqual(station.id, "123456")
        XCTAssertEqual(station.name, "Berlin Hauptbahnhof")
        XCTAssertEqual(station.location!.latitude!, 13.3, accuracy: 1.0)
        XCTAssertEqual(station.address, "Europaplatz 1, 10557 Berlin")
        XCTAssertEqual(station.regions?.count, 2)
    }
}
