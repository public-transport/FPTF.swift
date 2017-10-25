public struct Line: Item, Codable {
    public let id: String
    public let name: String
    public let mode: Mode
    public let routes: [Ref<Route>]
    public let `operator`: Ref<Operator>

    public init(id: String, name: String, mode: Mode, routes: [Ref<Route>], `operator`: Ref<Operator>) {
        self.id = id
        self.name = name
        self.mode = mode
        self.routes = routes
        self.`operator` = `operator`
    }
}

extension Line: Equatable {
    public static func ==(lhs: Line, rhs: Line) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.mode == rhs.mode &&
            lhs.routes == rhs.routes &&
            lhs.`operator` == rhs.`operator`
    }
}
