import XCTest
import FPTF

class LineTests: XCTestCase {
    func testDecoding() {
        let line: Line = try! JSON.decode(json: "line")

        XCTAssertEqual(line.name, "ICE 599")
    }
}

