//
//  BlurScreenViewController.swift
//  BlurInactiveScreen
//
//  Created by Nikolay Shubenkov on 21/05/15.
//  Copyright (c) 2015 Nikolay Shubenkov. All rights reserved.
//

import UIKit

class BlurScreenViewController: UIViewController {
    
    @IBAction func blurButtonPressed(sender: UIButton) {
        let appDelegate = (UIApplication.sharedApplication().delegate) as! AppDelegate
        appDelegate.blurPresentedView()
        
        //after 2.5 secs perform unblur window
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
            Int64(2.5 * Double(NSEC_PER_SEC))),
            dispatch_get_main_queue(), {
                appDelegate.unblurPresentedView()
        })
    }
}

