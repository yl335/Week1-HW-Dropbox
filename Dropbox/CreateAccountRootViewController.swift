//
//  CreateAccountRootViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/5/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class CreateAccountRootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        performSegueWithIdentifier("CreateAccountSeque", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

