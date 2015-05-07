//
//  TermsOfServiceViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/5/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class TermsOfServiceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func OnDoneButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
}

