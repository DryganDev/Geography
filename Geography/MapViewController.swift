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

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    @IBOutlet var myMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let locationManager = CLLocationManager.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(location: initialLocation)
        let tap = UIGestureRecognizer.init(target: self, action: #selector(LongPress))
        myMapView.addGestureRecognizer(tap)
        myMapView.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    let regionRadius: CLLocationDistance = 100000
    func centerMapOnLocation(location:CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        myMapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func LongPress(_ sender: UITapGestureRecognizer) {
        print("pressed")
        let point = sender.location(in: myMapView)
        
        let tapPoint = myMapView.convert(point, toCoordinateFrom: view)
        
        let pointAnnotation = MKPointAnnotation.init()
        
        pointAnnotation.coordinate = tapPoint
        
        pointAnnotation.subtitle = "Lat: \(tapPoint.latitude), Long: \(tapPoint.longitude)"
        myMapView.addAnnotation(pointAnnotation)
        

//        if sender.state != UIGestureRecognizerState.began { return }
//        let touchLocation = sender.location(ofTouch: 0, in: myMapView)
//        print("\(touchLocation)")
//        let locationCoordinate = myMapView.convert(touchLocation, toCoordinateFrom: myMapView)
//        print("Tapped at lat: \(locationCoordinate.latitude) long: \(locationCoordinate.longitude)")
    }
    
    }
//
//    @IBAction func revealRegionDetailsWithLongPressOnMap(sender: UILongPressGestureRecognizer) {
//        if sender.state != UIGestureRecognizerState.began { return }
//        let touchLocation = sender.location(in: myMapView)
//        let locationCoordinate = myMapView.convert(touchLocation, toCoordinateFrom: myMapView)
//        print("Tapped at lat: \(locationCoordinate.latitude) long: \(locationCoordinate.longitude)")
//    }
//    

    


