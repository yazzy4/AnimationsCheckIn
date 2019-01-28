//
//  ViewController.swift
//  AnimationsCheckIn
//
//  Created by Yaz Burrell on 1/28/19.
//  Copyright © 2019 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var dogOrCat: UILabel!
    @IBOutlet weak var dog: UIButton!
    
    private var animator: UIViewPropertyAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(translationX: 100.0, y: 100.0)
        })
    }

    @IBAction func slider(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    @IBAction func transformButtonPressed(_ sender: Any) {
        if dog.imageView?.image == UIImage(named: "dog") {
            UIView.transition(with: dog, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.dog.setImage(UIImage(named: "cat"), for: .normal)
                self.dogOrCat.text = "cat"
            })
        } else{
            UIView.transition(with: dog, duration: 1.0, options: [.transitionFlipFromLeft], animations: {
                self.dog.setImage(UIImage(named: "dog"), for: .normal)
                self.dogOrCat.text = "dog"
            })
        }
        
    }
    

}
