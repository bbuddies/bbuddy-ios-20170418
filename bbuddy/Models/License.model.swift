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
    
    convenience init(month: String, amount: String){
        self.init(api: Api())
        self.month = month
        self.amount = amount
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
    
    func pricePerDay () -> Float {
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM"
        
        let range = calendar.range(of: .day, in: .month, for: dateFormatter.date(from: month)!)!
        let numDays = Float(range.count)
        let price = Float(amount)! / numDays
        return price
    }
    
}
