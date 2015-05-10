//
//  WelcomeViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/9/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SignUpSegue1") {
            let navController = segue.destinationViewController as! UINavigationController
            let signUpController = navController.topViewController as! CreateAccountRootViewController
            signUpController.autoAdvance = true
        }
        
        if (segue.identifier == "SignInSegue1" || segue.identifier == "SignInSegue2") {
            let navController = segue.destinationViewController as! UINavigationController
            let signInController = navController.topViewController as! SignInRootViewController
            signInController.autoAdvance = true
        }
    }

}
