struct Region: Item, Codable {
    let id: String
    let name: String
    let stations: [Reference<Station>]
}
