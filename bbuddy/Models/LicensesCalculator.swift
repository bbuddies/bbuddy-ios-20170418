//
//  LicensesCalculator.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation
struct TimeDuration {
    var startTime:Date?
    var endTime:Date?
}
class LicensesCalculator {
    private var api:Api
    var license:Array<License> = []
    var duration = TimeDuration()
    
    convenience init(){
        self.init(api: Api())
    }
    
    convenience init(startDate:String, endDate:String){
        self.init(api: Api())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        self.duration.startTime = dateFormatter.date(from: startDate)
        self.duration.endTime = dateFormatter.date(from: endDate)
    }
    
    init(api: Api){
        self.api = api
    }
    
    func totalAmount (_ action: @escaping (Float?) -> Void) {
        
        if self.duration.startTime == nil || self.duration.endTime == nil || self.duration.startTime! > self.duration.endTime! {
            action(nil)
        }else{
            let total = self._calculateForTotalAmountFromLicense()
            action(total)
        }
    }
    
    func fakePrice () -> [License] {
        let license1:License = License(month: "2017-1", amount: "31")
        let license2:License = License(month: "2017-2", amount: "28")
        let license3:License = License(month: "2017-3", amount: "0")
        let license4:License = License(month: "2017-4", amount: "30")
        let license5:License = License(month: "2017-5", amount: "31")
        
        let license6:License = License(month: "2017-6", amount: "0")
        let license7:License = License(month: "2017-7", amount: "31")
        let license8:License = License(month: "2017-8", amount: "31")
        let license9:License = License(month: "2017-9", amount: "0")
        let license10:License = License(month: "2017-10", amount: "0")
        
        let license11:License = License(month: "2017-11", amount: "0")
        let license12:License = License(month: "2017-12", amount: "0")
        
        return [license1, license2, license3, license4, license5, license6, license7, license8, license9, license10, license11, license12];
    }
    
    private func _calculateForTotalAmountFromLicense() -> Float {
        self.license = self.fakePrice()
        
        let calendar = Calendar.current
        var currentDate = duration.startTime!
        var totalAmount:Float = 0.0
        while currentDate < duration.endTime! + 86400 {
            let month = calendar.component(.month, from: currentDate)
            let currentLicense = self.license[month - 1]
            totalAmount = totalAmount + currentLicense.pricePerDay()
            currentDate.addTimeInterval(86400)
        }
        
        return totalAmount
    }
    
    
}
