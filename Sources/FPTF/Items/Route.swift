/// Represents a single set of `Station`s of a single `Line`.
public struct Route: Item {
    public let type = "route"
    
    public let id: String
    public let line: Ref<Line>
    public let mode: Mode
    public let stops: [RefTwo<Station, Stop>]
}
