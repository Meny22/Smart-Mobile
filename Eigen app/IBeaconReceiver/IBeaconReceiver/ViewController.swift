//
//  ViewController.swift
//  IBeaconReceiver
//
//  Created by Fhict on 26/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit
import CoreBluetooth
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var lblStatus: UILabel!
    var region = CLBeaconRegion()
    var locationManager = CLLocationManager()
    let uuid = NSUUID(UUIDString: "0CF052C2-97CA-407C-84F8-B62AAC4E9020")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSearch(sender: UIButton) {
        region = CLBeaconRegion(proximityUUID: uuid, identifier: "edu.fontys.sm3.test")
        self.locationManager.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.startMonitoringForRegion(self.region)
        self.locationManager.startRangingBeaconsInRegion(region as CLBeaconRegion)
    }
    
    func locationManager(manager: CLLocationManager!, didRangeBeacons beacons: NSArray!, inRegion region: CLBeaconRegion!) {
        var beacon = beacons.lastObject as CLBeacon
        switch beacon.proximity {
        case CLProximity.Immediate:
            lblStatus.text = "IMMEDIATE"
        case CLProximity.Near:
            lblStatus.text = "NEAR"
            break
        default : break
        }
    }

}

