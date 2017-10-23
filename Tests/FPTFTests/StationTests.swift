import XCTest
import FPTF

class StationTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "station",
            "id": "123456",
            "name": "Berlin Hauptbahnhof",
            "coordinates": {
                "longitude": 52.5250839,
                "latitude": 13.3672133
            },
            "address": "Europaplatz 1, 10557 Berlin",
            "regions": [
                "1234",
                "2345"
            ]
        }
        """.data(using: .utf8)!

        do {
            let station = try JSONDecoder().decode(Station.self, from: json)
            dump(station)
        } catch {
            XCTFail(String(describing: error))
        }
    }
}
