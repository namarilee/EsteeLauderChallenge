//
//  ViewController.swift
//  EsteeLauderChallenge
//
//  Created by Marina Lee on 7/20/21.
//  Copyright © 2021 marinalee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func browseButtonClicked(_ sender: UIButton) {
        animateButton(sender)
    }
    
    func animateButton(_ buttonToAnimate: UIView) {
         UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
                  buttonToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
              }) { (_) in
                  UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                      buttonToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
                  }, completion: nil)
              }
     }
    
}

