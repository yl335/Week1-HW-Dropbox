//
//  CreateAccountViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/5/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUpBar1: UIImageView!
    @IBOutlet weak var signUpBar2: UIImageView!
    @IBOutlet weak var signUpBar3: UIImageView!
    @IBOutlet weak var signUpBar4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstNameField?.becomeFirstResponder()
        
        signUpBar1.hidden = true
        signUpBar2.hidden = true
        signUpBar3.hidden = true
        signUpBar4.hidden = true
        
        createButton.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButtonClick(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func didStartTypePassword(sender: AnyObject) {
        signUpBar1.hidden = false
    }
    
    @IBAction func didChangePassword(sender: AnyObject) {
        var length = count(passwordField.text)
        
        if (length > 4) {
            createButton.enabled = true
        } else {
            createButton.enabled = false
        }
        
        if (length > 10) {
            signUpBar4.hidden = false
        } else if (length > 7) {
            signUpBar3.hidden = false
            signUpBar4.hidden = true
        } else if (length > 4) {
            signUpBar2.hidden = false
            signUpBar3.hidden = true
            signUpBar4.hidden = true
        } else {
            signUpBar2.hidden = true
            signUpBar3.hidden = true
            signUpBar4.hidden = true
        }
    }
    
}

