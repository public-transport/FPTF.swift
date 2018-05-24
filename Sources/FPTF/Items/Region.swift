/// A group of `Station`s, for example a metropolitan area or a geographical or cultural region.
public struct Region: Item {
    public let type = "region"
    
    public let id: String
    public let name: String
    public let stations: [Ref<Station>]

    public init(id: String, name: String, stations: [Ref<Station>]) {
        self.id = id
        self.name = name
        self.stations = stations
    }
}
