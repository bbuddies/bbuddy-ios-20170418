//
//  License.model.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation

class License {
    private var api:Api
    var month = ""
    var amount = 0
    
    convenience init(){
        self.init(api: Api())
    }
    
    init(api: Api){
        self.api = api
    }
    
    func save(_ action: @escaping () -> Void, failed: () -> Void){
        if !isValid() {
            failed()
        }
        
        let licenseToUpdate = DTO.License(month: month, amount: amount)
        api.addLicense(licenseToUpdate, to: action)
    }
    
    func isValid() -> Bool {
        return (!month.isEmpty && amount > 0)
    }
}
