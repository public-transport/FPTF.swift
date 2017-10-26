import Foundation
import FPTF

enum JSON {
    static func decode<T: Item>(json: String) throws -> T {
        let pwd: String
        if let xcode_pwd = ProcessInfo.processInfo.environment["XCODE_PWD"] {
            pwd = xcode_pwd
        } else if let actual_pwd = ProcessInfo.processInfo.environment["PWD"] {
            pwd = actual_pwd
        } else {
            throw "$PWD not set - in Xcode, set $XCODE_PWD to project dir"
        }

        let url = URL(fileURLWithPath: "\(pwd)/Tests/FPTFTests/Fixtures/\(json).json")
        let data = try Data(contentsOf: url)

        let decoder = JSONDecoder()
        if #available(OSX 10.12, *) {
            decoder.dateDecodingStrategy = .iso8601
        }

        return try decoder.decode(T.self, from: data)
    }
}

extension String: Error {}
