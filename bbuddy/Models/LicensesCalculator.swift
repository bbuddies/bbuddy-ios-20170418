//
//  LicensesCalculator.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation
struct TimeDuration {
    var startTime = ""
    var endTime = ""
}
class LicensesCalculator {
    private var api:Api
    var price:Array<Int> = []
    var duration = TimeDuration()
    
    convenience init(){
        self.init(api: Api())
    }
    
    init(api: Api){
        self.api = api
    }
    
    class func initWith(duration: TimeDuration) -> LicensesCalculator! {
        let calculator = LicensesCalculator()
        calculator.duration = duration;
        
        return calculator
    }
    
    func totalAmount (_ action: @escaping (Int) -> Void) {
        action(100)
    }
}
