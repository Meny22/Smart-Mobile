//
//  DetailsViewController.swift
//  InfinityBeyond
//
//  Created by Fhict on 12/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var seconds = 0.0
    var caloriesPerSecond = 0.022/60
    var timer = NSTimer()
    @IBOutlet weak var caloriesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("timerAction"), userInfo: nil, repeats: true)
        
    }
    
    func timerAction() {
        seconds++
        var calNotBurned = caloriesPerSecond*seconds;
        caloriesLabel.text = "\(calNotBurned)"
    }
    

}
