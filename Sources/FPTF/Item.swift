public protocol Item: Codable, Equatable {
    var type: String { get }
}
