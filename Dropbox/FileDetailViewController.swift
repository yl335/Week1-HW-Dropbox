//
//  FileDetailViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/9/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class FileDetailViewController: UIViewController {
    
    @IBOutlet weak var favoriteButton: UIButton!
    let favorited = "favorited"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if (defaults.boolForKey(favorited)) {
            favoriteButton.selected = true
        }
        else {
            favoriteButton.selected = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressFavorite(sender: AnyObject) {
        favoriteButton.selected = !favoriteButton.selected
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setBool(favoriteButton.selected, forKey: favorited)
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
