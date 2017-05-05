//
//  ViewController.swift
//  ArcGISRuntimeRD
//
//  Created by Alexandra Lifa on 5/5/17.
//  Copyright © 2017 Alexandra Lifa. All rights reserved.
//

import UIKit
import Foundation
import ArcGIS

class ViewController: UIViewController {
    @IBOutlet weak var mapView: AGSMapView!
    var locatorTask: AGSLocatorTask!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Display a map using the ArcGIS Online imagery basemap service
        self.mapView.map = AGSMap(basemapType: .imageryWithLabelsVector,  latitude: 33.7490, longitude: -84.3880, levelOfDetail: 14)
        self.mapView.locationDisplay.showPingAnimationSymbol = true
        self.mapView.locationDisplay.start{ (error: Error?) -> Void in
            if let error = error {
                UIAlertView(title: "Error", message: error.localizedDescription, delegate: nil, cancelButtonTitle: "Ok").show()
            }
            else {
                print("Location Display Started")
            }
        }
        
        
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

