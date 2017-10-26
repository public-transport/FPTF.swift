import XCTest
import FPTF

class RouteTests: XCTestCase {
    func testDecoding() {
        let route: Route = try! JSON.decode(json: "route")

        XCTAssertEqual(route.id, "1234")
        XCTAssertEqual(route.line, .reference("123"))
        XCTAssertEqual(route.mode, .bus)
        XCTAssertEqual(route.stops, [.reference("12345678"), .reference("87654321")])
    }
}

