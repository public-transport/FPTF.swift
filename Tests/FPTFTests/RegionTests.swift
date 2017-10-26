import XCTest
import FPTF

class RegionTests: XCTestCase {
    func testDecoding() {
        let region: Region = try! JSON.decode(json: "region")

        XCTAssertEqual(region.name, "Bretagne")
    }
}

