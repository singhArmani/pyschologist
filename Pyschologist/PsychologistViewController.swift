//
//  ViewController.swift
//  Pyschologist
//
//  Created by simranjeet on 8/01/2016.
//  Copyright © 2016 singh. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    @IBAction func nothing(sender: UIButton) {
        
        performSegueWithIdentifier("nothing", sender: nil)
        
    }
    //Adding a test commit for git purpose
    //Added a second test comment 
    //Added a third comment in github
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        var destination = segue.destinationViewController as UIViewController
        
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController!  // pulling out the top most visible controller out of the stack
        }
    
        if let hvc = destination as? HappinessViewController{
            if let identifier = segue.identifier {
                switch identifier {
                case "sad": hvc.currentResultStorage = "sad"
                case "happy": hvc.currentResultStorage = "happy"
                case "naah": hvc.currentResultStorage = "neutral"
                case "nothing": hvc.currentResultStorage = "i am scared"
                default: break
                }
            }
        }
    
    }

}

