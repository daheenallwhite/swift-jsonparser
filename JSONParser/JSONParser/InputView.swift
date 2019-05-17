//
//  InputView.swift
//  JSONParser
//
//  Created by Daheen Lee on 17/05/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct InputView {
    static private let instruction = "분석할 JSON 데이터를 입력하세요."
    
    static func printInstruction() {
        print(instruction)
    }
    
    static func read() throws -> String {
        guard let input = readLine() else {
            throw InputError.invalidFormat
        }
        return input
    }
}
