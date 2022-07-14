//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eric Di Gioia on 7/10/22.
//
// 🥈 ConversionView recreated programmatically

import UIKit

class ConversionViewController: UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor(red: 244/255, green: 245/255, blue: 241/255, alpha: 1)
        
        let fahrenheitLabel = UILabel()
        fahrenheitLabel.text = "212"
        fahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        fahrenheitLabel.font = .systemFont(ofSize: 70)
        fahrenheitLabel.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        view.addSubview(fahrenheitLabel)
        let degreesFahrenheitLabel = UILabel()
        degreesFahrenheitLabel.text = "degrees Farenheit"
        degreesFahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        degreesFahrenheitLabel.font = .systemFont(ofSize: 36)
        degreesFahrenheitLabel.textColor = .orange
        view.addSubview(degreesFahrenheitLabel)
        let isReallyLabel = UILabel()
        isReallyLabel.text = "is really"
        isReallyLabel.translatesAutoresizingMaskIntoConstraints = false
        isReallyLabel.font = .systemFont(ofSize: 36)
        isReallyLabel.textColor = .orange
        view.addSubview(isReallyLabel)
        let celciusLabel = UILabel()
        celciusLabel.text = "100"
        celciusLabel.translatesAutoresizingMaskIntoConstraints = false
        celciusLabel.font = .systemFont(ofSize: 70)
        celciusLabel.textColor = .orange
        view.addSubview(celciusLabel)
        let degreesCelciusLabel = UILabel()
        degreesCelciusLabel.text = "degrees Celcius"
        degreesCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        degreesCelciusLabel.font = .systemFont(ofSize: 36)
        degreesCelciusLabel.textColor = UIColor(red: 225/255, green: 88/255, blue: 41/255, alpha: 1)
        view.addSubview(degreesCelciusLabel)
        
        let fahrenheitLabelTopConstraint = fahrenheitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let fahrenheitLabelCenterXConstraint = fahrenheitLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let degreesFahrenheitLabelTopConstraint = degreesFahrenheitLabel.topAnchor.constraint(equalTo: fahrenheitLabel.bottomAnchor, constant: 8)
        let degreesFahrenheitLabelCenterXConstraint = degreesFahrenheitLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let isReallyLabelTopConstraint = isReallyLabel.topAnchor.constraint(equalTo: degreesFahrenheitLabel.bottomAnchor, constant: 8)
        let isReallyLabelCenterXConstraint = isReallyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let celciusLabelTopConstraint = celciusLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 8)
        let celciusLabelCenterXConstraint = celciusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let degreesCelciusLabelTopConstraint = degreesCelciusLabel.topAnchor.constraint(equalTo: celciusLabel.bottomAnchor, constant: 8)
        let degreesCelciusLabelCenterXConstraint = degreesCelciusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        fahrenheitLabelTopConstraint.isActive = true
        fahrenheitLabelCenterXConstraint.isActive = true
        degreesFahrenheitLabelTopConstraint.isActive = true
        degreesFahrenheitLabelCenterXConstraint.isActive = true
        isReallyLabelTopConstraint.isActive = true
        isReallyLabelCenterXConstraint.isActive = true
        celciusLabelTopConstraint.isActive = true
        celciusLabelCenterXConstraint.isActive = true
        degreesCelciusLabelTopConstraint.isActive = true
        degreesCelciusLabelCenterXConstraint.isActive = true
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        print("ConversionViewController loaded its view.")
    }
    
}

