public struct Region: Item, Codable {
    public let id: String
    public let name: String
    public let stations: [Ref<Station>]

    public init(id: String, name: String, stations: [Ref<Station>]) {
        self.id = id
        self.name = name
        self.stations = stations
    }
}

extension Region: Equatable {
    public static func ==(lhs: Region, rhs: Region) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.stations == rhs.stations
    }
}
