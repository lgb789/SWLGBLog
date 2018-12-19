//
//  SwiftClass.swift
//  SwiftInObjc
//
//  Created by guoquan li on 2018/12/3.
//  Copyright © 2018 guoquan li. All rights reserved.
//

import Foundation

open class SwiftClass: NSObject {
    @objc open func test() -> String {
        return "hello object-c"
    }
    
    @objc open var flag: Bool = false
}
