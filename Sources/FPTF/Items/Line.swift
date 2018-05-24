public struct Line: Item {
    public let type = "line"

    public var id: String
    public var name: String
    public var mode: Mode
    public var routes: [Ref<Route>]
    public var `operator`: Ref<Operator>

    public init(id: String, name: String, mode: Mode, routes: [Ref<Route>], operator: Ref<Operator>) {
        self.id = id
        self.name = name
        self.mode = mode
        self.routes = routes
        self.operator = `operator`
    }
}
