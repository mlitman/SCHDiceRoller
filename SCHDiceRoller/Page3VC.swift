//
//  Page3VC.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 3/4/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

class Page3VC: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theLabel.text = SCHCore.sharedText

        // Do any additional setup after loading the view.
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
