//
//  ViewController.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 2/11/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func page2ButtonPressed(sender: AnyObject)
    {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("Page2VC") as! Page2VC
        vc.theText = self.theTextField.text!
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let vc = segue.destinationViewController as! Page2VC
        //vc.theText = "I told you so!!!"
        vc.theText = self.theTextField.text!
    }
}

