import XCTest
import FPTF

class RegionTests: XCTestCase {
    func testDecoding() {
        let region: Region = try! JSON.decode(json: "region")

        XCTAssertEqual(region.type, "region")
        XCTAssertEqual(region.id, "1234")
        XCTAssertEqual(region.name, "Bretagne")
        XCTAssertEqual(region.stations, ["123456", "234567"])
    }
}

