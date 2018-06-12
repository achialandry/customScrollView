//
//  MyScrollView.swift
//  myScrollView
//
//  Created by Landry Achia Ndong on 2018-06-11.
//  Copyright © 2018 Landry Achia Ndong. All rights reserved.
//

import UIKit



class MyScrollView: UIView {

    var contentSize: CGSize?
    var panGesture = UIPanGestureRecognizer()
    
    var initialCenter = CGPoint()  // The initial center point of the view.
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panPiece(_:)))
        self.addGestureRecognizer(panGestureRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Here we use the method didPan(sender:), which we defined in the previous step, as the action.
    
    
    @objc func panPiece(_ gestureRecognizer : UIPanGestureRecognizer) {
        guard gestureRecognizer.view != nil else {return}
        let piece = gestureRecognizer.view!
        
        let location = gestureRecognizer.location(in: piece.superview)
        
        
        // Get the changes in the X and Y directions relative to
        // the superview's coordinate space.
        let translation = gestureRecognizer.translation(in: piece.superview)
        if gestureRecognizer.state == .began {
            // Save the view's original position.
            self.initialCenter = piece.center
            print("Gesture Began")
        }
        // Update the position for the .began, .changed, and .ended states
        if gestureRecognizer.state != .cancelled {
            // Add the X and Y translation to the view's original position.
            let newCenter = CGPoint(x: initialCenter.x, y: initialCenter.y + translation.y)
            piece.center = newCenter
            print("Gesture is changing")
        }
        else {
            // On cancellation, return the piece to its original location.
            piece.center = initialCenter
        }
    }
}
