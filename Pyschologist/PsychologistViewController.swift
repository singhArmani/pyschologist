//
//  ViewController.swift
//  Pyschologist
//
//  Created by simranjeet on 8/01/2016.
//  Copyright © 2016 singh. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if let hvc = segue.destinationViewController as? HappinessViewController{
            if let identifier = segue.identifier {
                switch identifier {
                case "sad": hvc.currentResultStorage = "sad"
                case "happy": hvc.currentResultStorage = "happy"
                case "naah": hvc.currentResultStorage = "neutral"
                default: break
                }
            }
        }
    
    }

}

