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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testLog() -> Void {
        LGB.log("hello world")
    }

}

