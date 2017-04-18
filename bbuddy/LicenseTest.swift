//
//  LicenseTest.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import XCTest
@testable import bbuddy

class LicenseTest: XCTestCase {
    var mainTab:MainTabBarViewController!;
    var licenseVC:LicenseTableViewController!;
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        mainTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBarViewController") as! MainTabBarViewController
        licenseVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LicenseTableViewController") as! LicenseTableViewController
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
    
    func testMainTabHaveLicenseTab() {
        var hasVC = false
        for vc in mainTab.viewControllers! {
            if let navi = vc as? UINavigationController {
                let rootVC = navi.viewControllers[0]
                if rootVC .isMember(of: LicenseTableViewController.classForCoder()) {
                    hasVC = true
                }
            }
        }
        XCTAssert(hasVC)
    }
    
    
}
