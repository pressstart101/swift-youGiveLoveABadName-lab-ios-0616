//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var niceHaircut: UIImageView!
    @IBOutlet weak var button: UIButton!
    var heightConstraint: NSLayoutConstraint?
    var flag: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  niceHaircut.removeConstraints(niceHaircut.constraints)
       // niceHaircut.translatesAutoresizingMaskIntoConstraints = false
        
        niceHaircut.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
        niceHaircut.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
       heightConstraint = niceHaircut.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.40)
        heightConstraint?.active = true

    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        print("work!")
        if self.flag == false{
        viewUp()
        }else{viewDown()
        }
    }

    func viewUp() {
        UIView.animateKeyframesWithDuration(1.1, delay: 0.0, options: [], animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.2, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.2)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.2, relativeDuration: 0.7, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.2)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.2, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.0)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            }, completion: {(true) in
                self.view.bringSubviewToFront(self.button)
                self.flag = true
        })
        
    }
    
    
    
    func viewDown(){
    
        UIView.animateKeyframesWithDuration(1.3, delay: 0.0, options: [], animations: {
            
            
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.2, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.2)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframeWithRelativeStartTime(0.2, relativeDuration: 0.9, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.2)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            UIView.addKeyframeWithRelativeStartTime(1.1, relativeDuration: 0.2, animations: {
                self.heightConstraint?.active = false
                self.heightConstraint? = self.niceHaircut.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.4)
                self.heightConstraint?.active = true
                self.view.layoutIfNeeded()
                
            })
            
            }, completion: {(true) in
                self.view.bringSubviewToFront(self.button)
                self.flag = false
        })
    }
    
    
    
    
    
}