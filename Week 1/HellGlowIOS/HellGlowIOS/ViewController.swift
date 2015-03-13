//
//  ViewController.swift
//  HellGlowIOS
//
//  Created by Fhict on 28/02/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage() {
        let blueLightAct = GlowAct(name:"The Bluelight act", rating:8, startTime:"22:20")
        let redLightAct = GlowAct(name: "The RedLight act", rating:9, startTime:"23:20")
        let yellowLightAct = GlowAct(name: "The YellowLight act", rating:5, startTime:"20:15")
        let cityAct = City(name: "Eindhoven", population: 220000)
        cityAct.addAct(blueLightAct)
        cityAct.addAct(redLightAct)
        cityAct.addAct(yellowLightAct)
        let alertController = UIAlertController(title:"City information", message: cityAct.showInfo(), preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}

