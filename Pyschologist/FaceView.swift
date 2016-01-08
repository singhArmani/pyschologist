//
//  FaceView.swift
//  Happiness
//
//  Created by simranjeet on 31/12/2015.
//  Copyright © 2015 singh. All rights reserved.
//

import UIKit

@IBDesignable
class FaceView: UIView {
    
    //we will make our facepathlinewidth configurable and attach a property observer to it so that when someone sets it, we can call our setNeedsDisplay()
    @IBInspectable
    var myfacePathLineWidth:CGFloat = 3 { didSet { setNeedsDisplay() } }
    @IBInspectable
    var faceColor:UIColor = UIColor.blueColor() { didSet { setNeedsDisplay() } }
    @IBInspectable
    var scale:CGFloat = 0.9 {didSet { setNeedsDisplay()} }
    
    //lets have computed property for faceCenter and faceRadius
    
    var faceCenter:CGPoint {
        get{
            return convertPoint(center, fromView: superview)  // you can avoid writing get ...see below
        }
    }
    
    var faceRadius:CGFloat {
        return min(bounds.size.width, bounds.size.height)/2 * scale // you can avoid writing get {} if you only calculating the property and not setting it.
    }
    
    
    //as via controller we set target equals to our FaceView so it becomes the handler ... (whom to tell when particular gesture is recognised)
    
    func scale (gesture:UIPinchGestureRecognizer){
        
        //if the state of our pinch changes
        if gesture.state == .Changed {
            //then change our faceView Scale
            self.scale *= gesture.scale
            
            gesture.scale = 1 //resetting the scale to 1 
        }
    }
    
    override func drawRect(rect: CGRect) {
        
        //setting up the  facepath  here
        
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: true)
 
        
        //setting the path attributes
        facePath.lineWidth = myfacePathLineWidth
        
        faceColor.set()
        facePath.stroke()
        
        
        
        
       
    }
   

}
