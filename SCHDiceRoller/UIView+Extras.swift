//
//  UIView+Extras.swift
//  SCHDiceRoller
//
//  Created by Michael Litman on 4/7/16.
//  Copyright © 2016 thinkful. All rights reserved.
//

import UIKit

extension UIView
{
    func pulse()
    {
        UIView.animateWithDuration(1, animations:
            {
                self.alpha = 0.5
            })
        { (success) in
            UIView.animateWithDuration(1, animations: {
                self.alpha = 1.0
                }, completion: { (success) in
                    self.pulse()
            })
        }
    }
}
