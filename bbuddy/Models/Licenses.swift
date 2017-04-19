//
//  Licenses.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import Foundation

class Licenses {
    private var licenses = Array<DTO.License>()
    private var api: Api
    
    convenience init(){
        self.init(api: Api())
    }
    
    init(api: Api){
        self.api = api
    }
    
    func fetch(to action: @escaping () -> Void){
        api.getLicenses { [unowned me = self] licenses in
            me.licenses = licenses
            action()
        }
    }
}
