//
//  ViewController.swift
//  GoogleMapSample
//
//  Created by shinobu okano on 2015/07/27.
//  Copyright (c) 2015年 shinobu okano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GMSMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 35.681382,139.766084
        var camera = GMSCameraPosition.cameraWithLatitude(35.681382,
            longitude: 139.766084, zoom: 15)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
//         mapView.accessibilityElementsHidden = false
//         mapView.indoorEnabled = true
//         mapView.mapType = kGMSTypeHybrid
//        var mapInsets = UIEdgeInsetsMake(50.0, 0.0, 0.0, 100.0)
//        mapView.padding = mapInsets
//        mapView.settings.zoomGestures = false
//        mapView.settings.compassButton = true
        mapView.settings.myLocationButton = true
        self.view = mapView
        mapView.delegate = self
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(35.681382, 139.766084)
        marker.title = "Tokyo Station"
        marker.snippet = "Tokyo"
        marker.map = mapView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView: GMSMapView!, willMove gesture: Bool) {
        NSLog("will move")
    }
}

