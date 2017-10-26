import XCTest
import FPTF

class RouteTests: XCTestCase {
    func testDecoding() {
        let route: Route = try! JSON.decode(json: "route")

        XCTAssertEqual(route.id, "1234")
    }
}

