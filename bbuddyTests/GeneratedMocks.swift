// MARK: - Mocks generated from file: bbuddy/Api.swift at 2017-04-19 09:33:37 +0000

//
//  Api.swift
//  bbuddy
//
//  Created by Jackson Zhang on 10/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Cuckoo
@testable import bbuddy

import Argo
import Cely
import Foundation
import Moya

class MockApi: Api, Cuckoo.Mock {
    typealias MocksType = Api
    typealias Stubbing = __StubbingProxy_Api
    typealias Verification = __VerificationProxy_Api
    let cuckoo_manager = Cuckoo.MockManager()
    
    private var observed: Api?
    
    func spy(on victim: Api) -> Self {
        observed = victim
        return self
    }
    
    override func signIn(_ email: String, password: String, action: @escaping () -> Void) {
        return cuckoo_manager.call("signIn(_: String, password: String, action: @escaping () -> Void)", parameters: (email, password, action), original: observed.map { o in return { (email: String, password: String, action: @escaping () -> Void) in o.signIn(email, password: password, action: action) } })
    }
    
    override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void) {
        return cuckoo_manager.call("getAccounts(_: @escaping ([DTO.Account]) -> Void)", parameters: (action), original: observed.map { o in return { (action: @escaping ([DTO.Account]) -> Void) in o.getAccounts(action) } })
    }
    
    override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return cuckoo_manager.call("addAccount(_: DTO.Account, to: @escaping () -> Void)", parameters: (account, action), original: observed.map { o in return { (account: DTO.Account, action: @escaping () -> Void) in o.addAccount(account, to: action) } })
    }
    
    override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return cuckoo_manager.call("updateAccount(_: DTO.Account, to: @escaping () -> Void)", parameters: (account, action), original: observed.map { o in return { (account: DTO.Account, action: @escaping () -> Void) in o.updateAccount(account, to: action) } })
    }
    
    override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return cuckoo_manager.call("deleteAccount(_: DTO.Account, to: @escaping () -> Void)", parameters: (account, action), original: observed.map { o in return { (account: DTO.Account, action: @escaping () -> Void) in o.deleteAccount(account, to: action) } })
    }
    
    override func addLicense(_ month: String, amount: String, action: @escaping () -> Void) {
        return cuckoo_manager.call("addLicense(_: String, amount: String, action: @escaping () -> Void)", parameters: (month, amount, action), original: observed.map { o in return { (month: String, amount: String, action: @escaping () -> Void) in o.addLicense(month, amount: amount, action: action) } })
    }
    
    struct __StubbingProxy_Api: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        
        init(cuckoo_manager: Cuckoo.MockManager) {
            self.cuckoo_manager = cuckoo_manager
        }
        
        func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.StubNoReturnFunction<(String, String, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("signIn(_: String, password: String, action: @escaping () -> Void)", parameterMatchers: matchers))
        }
        
        func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.StubNoReturnFunction<(([DTO.Account]) -> Void)> where M1.MatchedType == ([DTO.Account]) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("getAccounts(_: @escaping ([DTO.Account]) -> Void)", parameterMatchers: matchers))
        }
        
        func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.StubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("addAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
        }
        
        func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.StubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("updateAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
        }
        
        func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.StubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("deleteAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
        }
        
        func addLicense<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ month: M1, amount: M2, action: M3) -> Cuckoo.StubNoReturnFunction<(String, String, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: month) { $0.0 }, wrap(matchable: amount) { $0.1 }, wrap(matchable: action) { $0.2 }]
            return Cuckoo.StubNoReturnFunction(stub: cuckoo_manager.createStub("addLicense(_: String, amount: String, action: @escaping () -> Void)", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_Api: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(cuckoo_manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = cuckoo_manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
            return cuckoo_manager.verify("signIn(_: String, password: String, action: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ([DTO.Account]) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
            return cuckoo_manager.verify("getAccounts(_: @escaping ([DTO.Account]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return cuckoo_manager.verify("addAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return cuckoo_manager.verify("updateAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
            return cuckoo_manager.verify("deleteAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func addLicense<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ month: M1, amount: M2, action: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: month) { $0.0 }, wrap(matchable: amount) { $0.1 }, wrap(matchable: action) { $0.2 }]
            return cuckoo_manager.verify("addLicense(_: String, amount: String, action: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class ApiStub: Api {
    
    override func signIn(_ email: String, password: String, action: @escaping () -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func addLicense(_ month: String, amount: String, action: @escaping () -> Void) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}
