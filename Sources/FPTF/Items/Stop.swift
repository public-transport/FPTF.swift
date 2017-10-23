public struct Stop: Item, Codable {
    public let id: String
    public let name: String
    public let station: Ref<Station>
    public let location: Location?
}
