public protocol Item: Codable, Equatable {
    var type: String { get }

    func validate() throws
}

extension Item {
    public func validate() throws {
        return
    }
}

enum Error: Swift.Error {
    case invalidFPTF(value: Any, reason: String)
}
