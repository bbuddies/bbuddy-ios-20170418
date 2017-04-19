//
//  LicenseTest.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Quick
import Nimble
import Cuckoo
@testable import bbuddy

class LicenseTest: QuickSpec {
    override func spec() {
        describe("License"){
            it("add a new license with month and amount"){
                let licenseDTO = DTO.License(month: "2017-04", amount: 100)
                let api = MockApi()
                stub(api){ api in
                    when(api).addLicense(equal(to: licenseDTO), to: anyClosure()).then { license, action in action() }
                }
                let license = License(api: api)
                license.month = "2017-04"
                license.amount = 100
                license.save(){ }
                verify(api).addLicense(equal(to: licenseDTO), to: anyClosure())
            }
        }
    }
}

extension DTO.License: Equatable{
    public static func ==(lhs: DTO.License, rhs: DTO.License) -> Bool {
        return lhs.month == rhs.month && lhs.amount == rhs.amount
    }
}
