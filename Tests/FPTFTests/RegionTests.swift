import XCTest
import FPTF

class RegionTests: XCTestCase {
    func testDecoding() {
        let region: Region = try! JSON.decode(json: "region")

        XCTAssertEqual(region.id, "1234")
        XCTAssertEqual(region.name, "Bretagne")
        XCTAssertEqual(region.stations, [.reference("123456"), .reference("234567")])
    }
}

