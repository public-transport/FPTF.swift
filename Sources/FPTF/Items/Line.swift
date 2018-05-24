public struct Line: Item {
    public let type = "line"
    
    public let id: String
    public let name: String
    public let mode: Mode
    public let routes: [Ref<Route>]
    public let `operator`: Ref<Operator>

    public init(id: String, name: String, mode: Mode, routes: [Ref<Route>], operator: Ref<Operator>) {
        self.id = id
        self.name = name
        self.mode = mode
        self.routes = routes
        self.operator = `operator`
    }
}
