//
//  LicensesCalculatorTest.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import XCTest
@testable import bbuddy

class LicensesCalculatorTest: XCTestCase {
    var calculator:LicensesCalculator!;
    override func setUp() {
        super.setUp()
        calculator = LicensesCalculator()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSingleMonthPrice() {
        let duration = self.getFakeDuration(fromDate: "2017-4-20", toDate: "2017-4-23")
        
        let price = calculator.calculateForTotalAmountFromDuration(duration: duration, licenses: calculator.fakePrice())
        
        assert(price == 4)
    }
    
    func testCrossMonthPrice() {

        let duration = self.getFakeDuration(fromDate: "2017-5-30", toDate: "2017-6-2")
        
        let price = calculator.calculateForTotalAmountFromDuration(duration: duration, licenses: calculator.fakePrice())
        
        assert(price == 2)
    }
    
    func testWrongDurationPrice() {
        
        let duration = self.getFakeDuration(fromDate: "2017-4-20", toDate: "2000-4-23")
        
        let price = calculator.calculateForTotalAmountFromDuration(duration: duration, licenses: calculator.fakePrice())
        
        assert(price == 0)
    }
    
    private func getFakeDuration(fromDate: String, toDate:String) -> TimeDuration {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let startDate = dateFormatter.date(from: fromDate)
        let endTime = dateFormatter.date(from: toDate)
        return TimeDuration(startTime: startDate, endTime: endTime)
    }
}
