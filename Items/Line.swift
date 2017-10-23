struct Line: Item, Codable {
    let id: String
    let name: String
    let mode: Mode
    let routes: [Reference<Route>]
    let `operator`: Reference<Operator>
}
