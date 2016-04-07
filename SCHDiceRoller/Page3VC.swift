//
//  Page3VC.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 3/4/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

class Page3VC: UIViewController
{

    @IBOutlet weak var animateButton: PulseButton!
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theLabel.text = SCHCore.sharedText
        self.theLabel.pulse()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool)
    {
        self.animateButton.pulse()
    }
    
    @IBAction func animateButtonPressed(sender: AnyObject)
    {
        UIView.animateWithDuration(2, animations:
            {
                self.tf.alpha = 0.0
                let newFrame = CGRectMake(0, 0, 150, 30)
                self.tf.frame = newFrame
            }) { (success) in
                self.tf.alpha = 1.0
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
