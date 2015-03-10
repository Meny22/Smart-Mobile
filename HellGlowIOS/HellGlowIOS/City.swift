//
//  City.swift
//  HellGlowIOS
//
//  Created by Fhict on 28/02/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit

class City: NSObject {
    var name:String
    var population:Int
    var glowActs:NSMutableArray
    
    init(name:String, population:Int) {
        self.name = name
        self.population = population
        self.glowActs = NSMutableArray()
    }
    
    func showInfo() -> String {
        var infoString:String
        infoString = "In the city of \(name) there are currently living \(population) people.\n\n\(glowActs.count) Glow act(s) will be displayed here"
        infoString += "\nAct(s) information\n"
        for i in 0...glowActs.count-1 {
            let act:GlowAct = glowActs.objectAtIndex(i) as GlowAct
            infoString += "Name act: \(act.name) \nStart time: \(act.startTime) \nRating: \(act.rating) \n"
        }
        return infoString
    }
    
    func addAct(act:GlowAct) {
        glowActs.addObject(act)
    }
}
