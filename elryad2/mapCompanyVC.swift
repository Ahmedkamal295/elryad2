//
//  mapCompanyVC.swift
//  elryad2
//
//  Created by Ahmed on 10/26/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class mapCompanyVC: UIViewController ,CLLocationManagerDelegate {


    @IBOutlet weak var map: MKMapView!
    
    
    let location_manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addPin(31.030799, 31.367930)
        location_manager.delegate = self
        location_manager.requestAlwaysAuthorization()
        location_manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let loc = locations[0]
        _ = loc.coordinate.latitude
        _ = loc.coordinate.longitude
        location_manager.stopUpdatingLocation()
        
    }
    
    func addPin(_ lat:Double,_ lng:Double){
        let point = MKPointAnnotation()
        point.title = "Company Location"
        point.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lat, longitude: lng), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        map.setRegion(region, animated: true)
        let pin = MKPinAnnotationView(annotation: point, reuseIdentifier: "id")
        map.addAnnotation(pin.annotation!)
    }
    
   
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
