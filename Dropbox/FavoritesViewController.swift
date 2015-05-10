//
//  FavoritesViewController.swift
//  Dropbox
//
//  Created by Sara Lin on 5/9/15.
//  Copyright (c) 2015 Sara Lin. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    @IBOutlet weak var favoritesView: UIImageView!
    let favorited = "favorited"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let defauls = NSUserDefaults.standardUserDefaults()
        if defauls.boolForKey(favorited) {
            favoritesView.hidden = false
        }
        else {
            favoritesView.hidden = true
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
