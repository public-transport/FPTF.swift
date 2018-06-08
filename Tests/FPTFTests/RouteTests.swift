import XCTest
import FPTF

class RouteTests: XCTestCase {
    func testDecoding() {
        let route: Route = try! JSON.decode(json: "route")

        XCTAssertEqual(route.type, "route")
        XCTAssertEqual(route.id, "1234")
        XCTAssertEqual(route.line, "123")
        XCTAssertEqual(route.mode, .bus)
        XCTAssertEqual(route.stops, ["12345678", "87654321"])
    }
}

