import XCTest
import FPTF

class LineTests: XCTestCase {
    func testDecoding() {
        let line: Line = try! JSON.decode(json: "line")

        XCTAssertEqual(line.type, "line")
        XCTAssertEqual(line.id, "123")
        XCTAssertEqual(line.name, "ICE 599")
        XCTAssertEqual(line.mode, .train)
        XCTAssertEqual(line.routes, [])
        XCTAssertEqual(line.operator, "123456")
    }
}

