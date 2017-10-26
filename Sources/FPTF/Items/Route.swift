/// Represents a single set of `Station`s of a single `Line`.
public struct Route: Item, Codable {
    public let id: String
    public let line: Ref<Line>
    public let mode: Mode
    public let stops: [RefTwo<Station, Stop>]

    public init(id: String, line: Ref<Line>, mode: Mode, stops: [RefTwo<Station, Stop>]) {
        self.id = id
        self.line = line
        self.mode = mode
        self.stops = stops
    }
}

extension Route: Equatable {
    public static func ==(lhs: Route, rhs: Route) -> Bool {
        return lhs.id == rhs.id &&
            lhs.line == rhs.line &&
            lhs.mode == rhs.mode &&
            lhs.stops == rhs.stops
    }
}
