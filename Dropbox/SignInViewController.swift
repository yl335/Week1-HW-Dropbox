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
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmailField?.becomeFirstResponder()
        signInButton?.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editingEmailChanged(sender: AnyObject) {
        updateSignInState()
    }

    @IBAction func editingPwdChanged(sender: AnyObject) {
        updateSignInState()
    }
    
    @IBAction func OnBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    func updateSignInState() {
        var emailCnt = count(EmailField.text)>0 ? true : false
        var pwdCnt = count(passwordField.text)>0 ? true : false
        
        //println("emailCnt=\(emailCnt), pwdCnt=\(pwdCnt)")
        
        if (emailCnt && pwdCnt) {
            signInButton.enabled = true
        } else {
            signInButton.enabled = false
        }
    }
}

