//
//  TransMitterViewController.swift
//  IBeaconsTransmitter
//
//  Created by Fhict on 26/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit
import CoreLocation
import CoreBluetooth

class TransMitterViewController: UIViewController,CBPeripheralManagerDelegate{
    var major : CLBeaconMajorValue!
    var minor : CLBeaconMinorValue!
    let uuid = NSUUID(UUIDString: "0CF052C2-97CA-407C-84F8-B62AAC4E9020")
    var peripheralManager = CBPeripheralManager()
    var advertisedData : NSMutableDictionary!
    var region : CLBeaconRegion?
    var number : NSNumber?
    @IBOutlet weak var lblStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager!) {
        switch peripheral.state {
        case CBPeripheralManagerState.PoweredOn:
            self.peripheralManager.startAdvertising(self.advertisedData)
        default : break
        }
    }
    
    @IBAction func btnTransmit(sender: UIButton) {
        lblStatus.text = "Transmitting"
        number = nil
        self.major = 9
        self.minor = 6
        region = CLBeaconRegion(proximityUUID:self.uuid, major:self.major as CLBeaconMajorValue, minor:self.minor as CLBeaconMinorValue, identifier:"edu.fontys.sm3.test")
        self.advertisedData = region?.peripheralDataWithMeasuredPower(number)
        self.peripheralManager = CBPeripheralManager(delegate: self, queue: nil, options: nil)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
