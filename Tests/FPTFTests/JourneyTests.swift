import XCTest
import FPTF

@available(OSX 10.12, *)
class JourneyTests: XCTestCase {
    func testDecoding() {
        let json = """
        {
            "type": "journey",
            "id": "12345",
            "legs": [
                {
                    "origin": "12345678",
                    "destination": "87654321",
                    "departure": "2017-03-16T20:00:00+01:00",
                    "departureDelay": 120,
                    "departurePlatform": "4-1",
                    "arrival": "2017-03-17T15:00:00+02:00",
                    "arrivalDelay": -45,
                    "arrivalPlatform": "9",
                    "schedule": "1234",
                    "mode": "walking",
                    "public": true,
                    "operator": "sncf"
                }
            ],
            "price": {
                "amount": 19.95,
                "currency": "EUR"
            }
        }
        """.data(using: .utf8)!

        do {
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let journey = try decoder.decode(Journey.self, from: json)
            XCTAssertEqual(journey.id, "12345")
        } catch {
            XCTFail(String(describing: error))
        }
    }
}
