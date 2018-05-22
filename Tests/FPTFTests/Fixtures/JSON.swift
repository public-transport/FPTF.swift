import Foundation
import FPTF

enum JSON {
    static func load(json: String) throws -> Data {
        let pwd: String
        if let xcode_pwd = ProcessInfo.processInfo.environment["XCODE_PWD"] {
            pwd = xcode_pwd
        } else if let actual_pwd = ProcessInfo.processInfo.environment["PWD"], actual_pwd != "/tmp" {
            pwd = actual_pwd
        } else {
            throw "$PWD not set - in Xcode, set $XCODE_PWD to project dir"
        }

        let url = URL(fileURLWithPath: "\(pwd)/Tests/FPTFTests/Fixtures/\(json).json")
        return try Data(contentsOf: url)
    }

    static func decode<T: Item>(json: String) throws -> T {
        let data = try load(json: json)

        let decoder = JSONDecoder()
        if #available(OSX 10.12, *) {
            decoder.dateDecodingStrategy = .iso8601
        }

        return try decoder.decode(T.self, from: data)
    }

    static func string(json: String) -> String? {
        guard let data = try? load(json: json) else { return nil }
        return String(data: data, encoding: .utf8)
    }

    static func encode<T: Item>(_ item: T) throws -> String {
        let encoder = JSONEncoder()
//        encoder.outputFormatting = .prettyPrinted
        let data = try encoder.encode(item)
        return String(data: data, encoding: .utf8)!
    }
}

extension String: Error {}
