//
//  License.model.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation

class License {
    private var api:Api
    var month = ""
    var amount = ""
    
    
    convenience init(){
        self.init(api: Api())
    }
    
    init(api: Api){
        self.api = api
    }
    
    func save(_ action: @escaping (Bool) -> Void){
        if self.month.characters.count == 0 || self.amount.characters.count == 0 || Int(self.amount)! <= 0 {
            action(false)
        }
        self.api.addLicense(month, amount: amount) {
            print("api success")
            action(true)
        }
    }
    
    
}
