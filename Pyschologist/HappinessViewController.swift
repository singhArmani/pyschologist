//
//  HappinessViewController.swift
//  Happiness
//
//  Created by simranjeet on 31/12/2015.
//  Copyright © 2015 singh. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {

    //let we assign the job of adding gestureViewRecongnizer to the faceView..
    
    //even though faceView can do it on its own but 95% of the time it's the controller job to do that
    
    //but first let's hook up our faceView to the controller 
    
        
    @IBOutlet weak var myFaceView: FaceView!

    
    var currentResultStorage:String = "Diagnosis"
   
    @IBOutlet weak var result: UILabel!{
        didSet{
            result.text = currentResultStorage
        }
    }

    @IBAction func faceScale(sender: UIPinchGestureRecognizer) {
        if sender.state == .Changed {
            
           myFaceView.scale *= sender.scale
            sender.scale = 1
        }
    }
    
    
    
}