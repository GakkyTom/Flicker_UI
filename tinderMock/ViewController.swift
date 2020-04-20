//
//  ViewController.swift
//  tinderMock
//
//  Created by 板垣智也 on 2020/04/20.
//  Copyright © 2020 板垣智也. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testObject = PFObject(className: "Testing")
        // Column.. "foo"
        // Param... "bar"
        testObject["foo"] = "bar"
        testObject.saveInBackground { (success, error) in
            print("object has been saved")
        }
    }
}
