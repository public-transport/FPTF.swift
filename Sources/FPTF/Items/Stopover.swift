//
//  File.swift
//  
//
//  Created by Lukas Schmidt on 02.10.19.
//

import Foundation

public struct Stopover: Item {
    public let type: String = "stopover"
    
    public var stop: Ref<Stop>
    
    public var arrival: Date?
    public var arriavlDelay: TimeInterval?
    public var arrivalPlatform: String?
    
    public var departure: Date?
    public var departureDelay: TimeInterval?
    public var departurePlatform: String?
    
    public init(stop: Ref<Stop>, arrival: Date?, arriavlDelay: TimeInterval?, arrivalPlatform: String?, departure: Date?, departureDelay: TimeInterval?, departurePlatform: String?) {
        self.stop = stop
        self.arrival = arrival
        self.arriavlDelay = arriavlDelay
        self.arrivalPlatform = arrivalPlatform
        self.departure = departure
        self.departureDelay = departureDelay
        self.departurePlatform = departurePlatform
    }
    
    public func validate() throws {
        if arrival == nil && departure == nil {
            throw Error.invalidFPTF(value: (arrival, departure), reason: "Either Arrival or Departure must not be nil.")
        }
    }
}
