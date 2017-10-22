import Foundation

enum Reference<T: Item> {
    case reference(String)
    case inline(T)
}

protocol Item {
     var id: String { get }
}

struct Station: Item {
    let id: String
    let name: String
    let coordinates: Coordinate?
    let address: String?
    let regions: [Reference<Region>]?
}

struct Stop: Item {
    let id: String
    let name: String
    let station: String
    let coordinates: Coordinate?
}

struct Region: Item {
    let id: String
    let name: String
    let stations: [String]
}

struct Line: Item {
    let id: String
    let name: String
    let mode: Mode
    // let routes: type?
    let `operator`: Reference<Station> // operator id or station object - why station object?
}

struct Route: Item {
    let id: String
    // let name: String // this doesn't have a name?!
    let line: String
    let mode: Mode
    let stops: [String]
}

struct Schedule: Item {
    let id: String
    let route: Reference<Route>
    let mode: Mode
    let sequence: [Element]
    let starts: [Int]

    struct Element {
        let arrival: Int? // required for last stop
        let departure: Int? // required for all but last stop
    }
}

struct Operator: Item {
    let id: String
    let name: String
}

struct Journey: Item {
    let id: String
    let legs: [Leg]
    let price: Price?

    struct Leg {
        let origin: String
        let destination: String
        let departure: Date
        let departureDelay: TimeInterval?
        let departurePlatform: String
        let arrival: Date
        let arrivalDelay: TimeInterval?
        let arrivalPlatform: String
        let schedule: String
        let mode: Mode
        let isPublic: Bool
        let `operator`: Reference<Station>
    }
}

struct Price {
    let amount: Double
    let currency: String
}
