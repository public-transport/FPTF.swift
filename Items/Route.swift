public struct Route: Item, Codable {
    public let id: String
    public let line: Reference<Line>
    public let mode: Mode
    public let stops: [Reference<Station>] // FIXME: This can also be a [Reference<Stop>]
}
