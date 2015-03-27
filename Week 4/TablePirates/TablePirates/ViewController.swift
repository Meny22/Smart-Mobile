//
//  ViewController.swift
//  TablePirates
//
//  Created by Fhict on 20/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLived: UILabel!
    @IBOutlet weak var lblYearsActive: UILabel!
    @IBOutlet weak var lblOrigin: UILabel!
    @IBOutlet weak var lblComments: UILabel!
    @IBOutlet weak var tvComments: UITextView!
    var selectedPirate:Pirate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillDetails()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fillDetails() {
        self.lblName.text = self.selectedPirate?.name
        self.lblLived.text = self.selectedPirate?.life
        self.lblYearsActive.text = self.selectedPirate?.yearsActive
        self.lblOrigin.text = self.selectedPirate?.countryOfOrigin
        self.tvComments.text = self.selectedPirate?.comments
    }


}

