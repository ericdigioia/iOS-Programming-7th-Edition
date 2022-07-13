//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Eric Di Gioia on 7/10/22.
//

import UIKit

class ConversionViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        print("ConversionViewController loaded its view.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        
        // 🥈 Create a random color background
        view.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255))/255, green: CGFloat(Int.random(in: 0...255))/255, blue: CGFloat(Int.random(in: 0...255))/255, alpha: 1)
    }
    
}

