public struct Stop: Item, Codable {
    public let id: String
    public let name: String
    public let station: Ref<Station>
    public let location: Location?

    public init(id: String, name: String, station: Ref<Station>, location: Location?) {
        self.id = id
        self.name = name
        self.station = station
        self.location = location
    }
}
