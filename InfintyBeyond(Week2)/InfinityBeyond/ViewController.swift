//
//  ViewController.swift
//  InfinityBeyond
//
//  Created by Fhict on 06/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameText.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lossButton(sender: UIButton) {
    }

    @IBAction func showTextbox(sender: UIButton) {
        nameText.hidden = false
    }
}

