//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Eric Di Gioia on 7/13/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        
        // create a map view
        mapView = MKMapView()
        // 🥉 create points of interest filter
        mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        // Set mapView as the controller main view
        view = mapView
        
        // create segmented control subview
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        // create segmented control constraints
        let margins = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        // activate segmented control constraints
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        // 🥉 UILabel
        let pointsOfInterestLabel = UILabel()
        pointsOfInterestLabel.text = "Points of Interest"
        pointsOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestLabel)
        let pointsOfInterestLabelTopConstraint = pointsOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 16)
        let pointsOfInterestLabelLeadingConstraint = pointsOfInterestLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        pointsOfInterestLabelTopConstraint.isActive = true
        pointsOfInterestLabelLeadingConstraint.isActive = true
        
        // 🥉 toggle switch
        let pointsOfInterestSwitch = UISwitch()
        pointsOfInterestSwitch.addTarget(self, action: #selector(togglePointsOfInterest(_:)), for: .valueChanged)
        pointsOfInterestSwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestSwitch)
        let pointsOfInterestSwitchTopConstraint = pointsOfInterestSwitch.centerYAnchor.constraint(equalTo: pointsOfInterestLabel.centerYAnchor)
        let pointsOfInterestSwitchLeadingConstant = pointsOfInterestSwitch.leadingAnchor.constraint(equalTo: pointsOfInterestLabel.trailingAnchor, constant: 8)
        pointsOfInterestSwitchTopConstraint.isActive = true
        pointsOfInterestSwitchLeadingConstant.isActive = true
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        print("MapViewController loaded its view.")
    }
    
    // changes mapView type
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
        
    }
    
    // 🥉 toggles points of interest filter
    @objc func togglePointsOfInterest(_ toggleSwitch: UISwitch) {
        mapView.pointOfInterestFilter = toggleSwitch.isOn ? .includingAll : .excludingAll
    }
    
}
