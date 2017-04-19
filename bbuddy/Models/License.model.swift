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
    
    class func initWith(month: String, amount: String) -> License! {
        let license = License()
        license.month = month
        license.amount = amount
        return license
    }
    
    init(api: Api){
        self.api = api
    }
    
    func save(_ action: @escaping (Bool) -> Void){
        if self.month.characters.count == 0 || self.amount.characters.count == 0 || Int(self.amount)! <= 0 {
            action(false)
        }
        let api = Api()
        api.addLicense(month, amount: amount) {
            print("api success")
            action(true)
        }
    }
    
    
}
