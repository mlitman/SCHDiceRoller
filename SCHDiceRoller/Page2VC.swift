//
//  Page2VC.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 2/11/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    var theText = "Woot"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theLabel.text = theText
        
        //this function is our first opportunity to use the widgets that live on this screen
    }

    @IBAction func backButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true) { () -> Void in
            //this is code that executes after the screen has transitioned away
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   

}
