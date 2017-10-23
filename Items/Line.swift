public struct Line: Item, Codable {
    public let id: String
    public let name: String
    public let mode: Mode
    public let routes: [Reference<Route>]
    public let `operator`: Reference<Operator>
}
