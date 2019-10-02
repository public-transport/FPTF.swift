import Foundation

/// A computed set of directions to get from A to B at a specific time. Typically the result
/// of a route planning algorithm.
public struct Journey: Item {
    public let type = "journey"

    public var id: String
    public var legs: [Leg]
    public var price: Price?

    public init(id: String, legs: [Leg], price: Price?) {
        self.id = id
        self.legs = legs
        self.price = price
    }

    public struct Leg: Codable, Equatable {
        public var origin: RefThree<Station, Stop, Location>
        public var destination: RefThree<Station, Stop, Location>
        public var departure: Date
        public var departureDelay: TimeInterval?
        public var departurePlatform: String
        public var arrival: Date
        public var arrivalDelay: TimeInterval?
        public var arrivalPlatform: String
        public var schedule: Ref<Schedule>?
        public var mode: Mode
        public var `public`: Bool
        public var `operator`: Ref<Operator>
        public var stopovers: [Stopover]?

        public init(origin: RefThree<Station, Stop, Location>,
                    destination: RefThree<Station, Stop, Location>,
                    departure: Date,
                    departureDelay: TimeInterval?,
                    departurePlatform: String,
                    arrival: Date,
                    arrivalDelay: TimeInterval?,
                    arrivalPlatform: String,
                    schedule: Ref<Schedule>?,
                    mode: Mode,
                    public: Bool,
                    `operator`: Ref<Operator>,
                    stopovers: [Stopover]?) {
            self.origin = origin
            self.destination = destination
            self.departure = departure
            self.departureDelay = departureDelay
            self.departurePlatform = departurePlatform
            self.arrival = arrival
            self.arrivalDelay = arrivalDelay
            self.arrivalPlatform = arrivalPlatform
            self.schedule = schedule
            self.mode = mode
            self.public = `public`
            self.operator = `operator`
            self.stopovers = stopovers
        }
    }

    public struct Price: Codable, Equatable {
        public var amount: Double
        public var currency: String

        public init(amount: Double, currency: String) {
            self.amount = amount
            self.currency = currency
        }
    }
}
