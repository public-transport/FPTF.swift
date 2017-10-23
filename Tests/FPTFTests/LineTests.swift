import XCTest
import FPTF

class LineTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "line",
            "id": "123",
            "name": "ICE 599",
            "mode": "train",
            "routes": [],
            "operator": "123456",
        }
        """.data(using: .utf8)!

        do {
            let line = try JSONDecoder().decode(Line.self, from: json)
            XCTAssertEqual(line.name, "ICE 599")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}

