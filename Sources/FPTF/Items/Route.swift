/// Represents a single set of `Station`s of a single `Line`.
public struct Route: Item {
    public let type = "route"

    public var id: String
    public var line: Ref<Line>
    public var mode: Mode
    public var stops: [RefTwo<Station, Stop>]

    public init(id: String, line: Ref<Line>, mode: Mode, stops: [RefTwo<Station, Stop>]) {
        self.id = id
        self.line = line
        self.mode = mode
        self.stops = stops
    }
}
