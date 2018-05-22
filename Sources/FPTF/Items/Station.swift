/// Larger building or area that can be identified by a name. Usually represented by a single
/// node on a public transport map. Whereas a `Stop` usually specifies a location, a `Station`
/// is often a broader area that may span across multiple levels or buildings.
public struct Station: Item {
    public let type = "station"

    public let id: String
    public let name: String
    public let location: Location?
    public let regions: [Ref<Region>]?
}
