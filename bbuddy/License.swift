//
//  License.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation
import Argo
import Curry
import Runes

extension DTO{
    struct License {
        var month: String = ""
        var amount: Int = 0
    }
}

extension DTO.License: Decodable {
    static func decode(_ json: JSON) -> Decoded<DTO.License> {
        return curry(DTO.License.init)
            <^> json <| "month"
            <*> json <| "amount"
    }
}
