//
//  ErrorMessage.swift
//  JSONParser
//
//  Created by jang gukjin on 02/05/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

enum ErrorMessage : String,Error {
    case notArray = "배열이 아닙니다."
    case wrongValue = "올바르지 않은 타입이 들어있습니다."
}
