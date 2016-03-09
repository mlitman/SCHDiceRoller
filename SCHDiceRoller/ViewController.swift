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
    
    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("View Did Load")
        //change the position of theTextField on the screen
    }

    @IBAction func shiftViewButtonPressed(sender: AnyObject)
    {
        //slide up when keyboard shows next time!!!!
        UIView.animateWithDuration(3) { () -> Void in
            let f = self.viewContainer.frame
            let newFrame = CGRectMake(f.origin.x, f.origin.y - 100, f.size.width, f.size.height)
            self.viewContainer.frame = newFrame
        }
        
    }
    
    override func viewDidAppear(animated: Bool)
    {
        print("View Did Appear")
        let newFrame = CGRectMake(0, 0, 150, 30)
        self.theTextField.frame = newFrame
        self.theTextField.setNeedsLayout()
    }
    
    override func viewDidLayoutSubviews()
    {
        print("View Did Layout Subviews")
    }
    
    
    
    @IBAction func hideKeyboardButtonPressed(sender: AnyObject)
    {
        self.theTextField.resignFirstResponder()
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
        if(segue.identifier == "page2Segue")
        {
            //directly injecting data into Page2
            let vc = segue.destinationViewController as! Page2VC
            //vc.theText = "I told you so!!!"
            vc.theText = self.theTextField.text!
        }
        else if(segue.identifier == "page3Segue")
        {
            //Singleton
            SCHCore.sharedText = self.theTextField.text!
        }
    }
}

