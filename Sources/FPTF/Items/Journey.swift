import Foundation

public struct Journey: Item, Codable {
    public let id: String
    public let legs: [Leg]
    public let price: Price?

    public init(id: String, legs: [Leg], price: Price?) {
        self.id = id
        self.legs = legs
        self.price = price
    }

    public struct Leg: Codable {
        public let origin: RefThree<Station, Stop, Location>
        public let destination: RefThree<Station, Stop, Location>
        public let departure: Date
        public let departureDelay: TimeInterval?
        public let departurePlatform: String
        public let arrival: Date
        public let arrivalDelay: TimeInterval?
        public let arrivalPlatform: String
        public let schedule: Ref<Schedule>
        public let mode: Mode
        public let `public`: Bool
        public let `operator`: Ref<Operator>

        public init(origin: RefThree<Station, Stop, Location>,
                    destination: RefThree<Station, Stop, Location>,
                    departure: Date,
                    departureDelay: TimeInterval?,
                    departurePlatform: String,
                    arrival: Date,
                    arrivalDelay: TimeInterval?,
                    arrivalPlatform: String,
                    schedule: Ref<Schedule>,
                    mode: Mode,
                    `public`: Bool,
                    `operator`: Ref<Operator>) {
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
            self.`public` = `public`
            self.`operator` = `operator`
        }
    }

    public struct Price: Codable {
        public let amount: Double
        public let currency: String

        public init(amount: Double, currency: String) {
            self.amount = amount
            self.currency = currency
        }
    }
}
