//
//  Compoundable.swift
//  JSONParser
//
//  Created by Daheen Lee on 24/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol Compoundable {
    var elementCount: Int { get }
    var elements: [JSONValue] { get }
    
}

extension Array: Compoundable where Element == JSONValue {
    var elementCount: Int {
        return self.count
    }
    
    var elements: [JSONValue] {
        return self
    }
}

extension Dictionary: Compoundable where Key == String, Value == JSONValue {
    var elementCount: Int {
        return self.count
    }
    
    var elements: [JSONValue] {
        return Array(self.values)
    }
    
}
