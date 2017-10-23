public struct Route: Item, Codable {
    public let id: String
    public let line: Ref<Line>
    public let mode: Mode
    public let stops: [RefTwo<Station, Stop>]
}
