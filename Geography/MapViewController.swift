//
//  ViewController.swift
//  Geography
//
//  Created by Artsiom Sazonau on 05.05.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
//    @IBOutlet var myMapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
//        centerMapOnLocation(location: initialLocation)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

//    let regionRadius: CLLocationDistance = 100000
//    func centerMapOnLocation(location:CLLocation) {
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
//        myMapView.setRegion(coordinateRegion, animated: true)
//    }
//    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        print("This is a Git tutorial")
    }
}

