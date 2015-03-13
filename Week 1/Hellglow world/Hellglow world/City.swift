//
//  City.swift
//  Hellglow world
//
//  Created by Fhict on 27/02/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import Cocoa

class City: NSObject {
    var name:String
    var population:Int
    var glowActs:NSMutableArray
    
    init(name:String, population:Int) {
        self.name = name
        self.population = population
        self.glowActs = NSMutableArray()
    }
    
    func showInfo() {
        println("In the city of \(name) there are currently living \(population) people. \(glowActs.count) Glow act(s) will be displayed here")
        println("\nAct(s) information\n")
        for i in 0...glowActs.count-1 {
            let act:GlowAct = glowActs.objectAtIndex(i) as GlowAct
            println("Name act: \(act.name) \nStart time: \(act.startTime) \nRating: \(act.rating) \n")
        }
    }
    
    func addAct(act:GlowAct) {
        glowActs.addObject(act)
    }
}
