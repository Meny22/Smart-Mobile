//
//  GlowAct.swift
//  HellGlowIOS
//
//  Created by Fhict on 28/02/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class GlowAct: NSObject {
    var name:String
    var rating:Int
    var startTime:String
    
    init(name:String, rating:Int, startTime: String) {
        self.name = name;
        self.rating = rating
        self.startTime = startTime
    }
    
    func showInfo() -> String{
        return "The act is called \(name) and starts at \(startTime). It is given an average rating of \(rating)"
    }
}
