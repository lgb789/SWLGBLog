//
//  SwiftClass01.swift
//  SWLGBLog_Example
//
//  Created by guoquan li on 2018/12/20.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class SwiftClass01: NSObject {
    @objc func test() -> String {
        
        return "hello object-c"
    }
    
    public var flag: Bool = false
    
    public static func llog(_ format: String, _ args: CVarArg..., fileName: String = #file, line: Int = #line) {
        //        if closeLog {
        //            return
        //        }
        //        let prefix = preString.count > 0 ? preString : level.description()
        print(" [\(URL(string: fileName)?.lastPathComponent ?? ""):\(line)] \(String(format: format, arguments:args))");
        
    }

}
