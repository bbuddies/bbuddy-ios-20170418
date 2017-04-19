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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let startDate = dateFormatter.date(from: "2017-4-20")
        let endTime = dateFormatter.date(from: "2017-4-23")
        let singleMonthDur = TimeDuration(startTime: startDate, endTime: endTime)
        
        let price = calculator.calculateForTotalAmountFromDuration(duration: singleMonthDur, licenses: calculator.fakePrice())
        
        assert(price == 4)
    }
    
}
