public struct Schedule: Item {
    public let type = "schedule"

    public var id: String
    public var route: Ref<Route>
    public var mode: Mode
    public var sequence: [Element]
    public var starts: [Int]

    /// - Warning: All but the last sequence element's `departure` may not be nil. The last
    ///            sequence element's `arrival` may also not be nil. This behavior is checked in
    ///            debug builds.
    public init(id: String, route: Ref<Route>, mode: Mode, sequence: [Element], starts: [Int]) {
        self.id = id
        self.route = route
        self.mode = mode
        self.sequence = sequence
        self.starts = starts

        assert((try? self.validate()) != nil, "Invalid FPTF")
    }

    public struct Element: Codable, Equatable {
        public var arrival: Int? // required for last stop
        public var departure: Int? // required for all but last stop

        public init(arrival: Int?, departure: Int?) {
            self.arrival = arrival
            self.departure = departure
        }
    }

    public func validate() throws {
        if let element = self.sequence.last, element.arrival == nil {
            throw Error.invalidFPTF(value: element, reason: "Arrival is not optional for the last sequence element.")
        }

        for element in self.sequence[..<(self.sequence.count - 1)] {
            if element.departure == nil {
                throw Error.invalidFPTF(value: element,
                                        reason: "Departure is not optional for all but the last sequence element.")
            }
        }
    }
}
