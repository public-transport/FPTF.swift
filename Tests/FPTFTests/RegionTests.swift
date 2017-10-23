import XCTest
import FPTF

class RegionTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "region",
            "id": "1234",
            "name": "Bretagne",
            "stations": [
                "123456", "234567"
            ]
        }
        """.data(using: .utf8)!

        do {
            let region = try JSONDecoder().decode(Region.self, from: json)
            XCTAssertEqual(region.name, "Bretagne")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}

