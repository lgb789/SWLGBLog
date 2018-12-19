//
//  ViewController.swift
//  SWLGBLog
//
//  Created by lgb789@126.com on 12/19/2018.
//  Copyright (c) 2018 lgb789@126.com. All rights reserved.
//

import UIKit
import SWLGBLog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        testLog()
        LGB.preString = "true"
        LGB.log("hello world 01")
        
        LGB.preString = ""
        LGB.defaultLevel = .error
        LGB.log("hello world 02")
        
        LGB.closeLog = true
        
        LGB.log("hello world 03")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testLog() -> Void {
        LGB.log("hello world 00")
        LGB.closeLog = true
        LGB.log("close log")
        LGB.closeLog = false
        
    }

}

