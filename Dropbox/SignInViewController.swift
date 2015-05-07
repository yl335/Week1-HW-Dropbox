//
//  SignInViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/5/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var EmailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmailField?.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didEdit(sender: AnyObject) {
        
    }
    
    @IBAction func OnBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
}

