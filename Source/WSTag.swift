//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {

    public let id: String
    public let text: String

    public init(_ id: String, _ text: String) {
        self.id = id
        self.text = text
    }
    
    public init(_ text: String) {
        self.id = text
        self.text = text
    }

    public var hashValue: Int {
        return self.id.hashValue
    }

    public func equals(_ other: WSTag) -> Bool {
        return self.id == other.id
    }

}

public func == (lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}
