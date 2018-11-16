//
//  CollectionType.swift
//  JSONParser
//
//  Created by 조재흥 on 18. 11. 13..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

protocol JsonCollection {
    
    
    func readNumberOfElements() -> Int
    
    func readNumberOfString() -> Int
    
    func readNumberOfNumber() -> Int
    
    func readNumberOfBool() -> Int
    
    func readNumberOfObject() -> Int
}