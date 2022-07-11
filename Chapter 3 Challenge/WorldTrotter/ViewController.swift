//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eric Di Gioia on 7/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        // 🥈 Create gradient background layer
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

