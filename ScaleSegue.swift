//
//  ScaleSegue.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 9. 3..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {
    override func perform() {
        scale()
        
    }
    
    func scale() {
        let toViewController = self.destination
        let fromViewControeller = self.source
        
        let containerView = fromViewControeller.view.superview
        let originalCenter = fromViewControeller.view.center
        
        toViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewController.view.center = originalCenter
        
        containerView?.addSubview(toViewController.view)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewController.view.transform = CGAffineTransform.identity
        }, completion: { success in
            fromViewControeller.present(toViewController, animated: false,completion: nil)
        })
        
        
    }

}
