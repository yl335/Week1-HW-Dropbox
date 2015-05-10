//
//  FilesViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/9/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class FilesViewController: UIViewController {

    @IBOutlet weak var filesImage: UIImageView!
    @IBOutlet weak var favoriteIcon: UIImageView!
    
    let favorited = "favorited"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(false, forKey: favorited)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Do any additional setup after loading the view.
        let defaults = NSUserDefaults.standardUserDefaults()
        if defaults.boolForKey(favorited) {
            favoriteIcon.hidden = false
        }
        else {
            favoriteIcon.hidden = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
