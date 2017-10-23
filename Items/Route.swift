struct Route: Item, Codable {
    let id: String
    let line: Reference<Line>
    let mode: Mode
    let stops: [Reference<Station>] // FIXME: This can also be a [Reference<Stop>]
}
