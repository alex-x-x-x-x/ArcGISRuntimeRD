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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Display a map using the ArcGIS Online imagery basemap service
        self.mapView.map = AGSMap(basemapType: .imageryWithLabelsVector, latitude: 33.7490, longitude: -84.3880, levelOfDetail: 17)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

