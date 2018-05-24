/// A single small point or structure at which vehicles stop. A `Stop` always belongs to a
/// `Station`. It may for example be a sign, a basic shelter or a railway platform.
/// - Note: If the underlying data source does not allow such a fine-grained distinction,
///         use `Station`s instead.
public struct Stop: Item {
    public let type = "stop"

    public var id: String
    public var name: String
    public var station: Ref<Station>
    public var location: Location?

    public init(id: String, name: String, station: Ref<Station>, location: Location?) {
        self.id = id
        self.name = name
        self.station = station
        self.location = location
    }
}
