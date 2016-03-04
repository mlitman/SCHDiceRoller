//
//  UIViewController+Stuff.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 3/4/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

extension UIViewController
{
    @IBAction func genericBackButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true) { () -> Void in
        }
    }
}
