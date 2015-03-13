//
//  main.swift
//  Hellglow world
//
//  Created by Fhict on 27/02/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import Foundation

let blueLightAct = GlowAct(name:"The Bluelight act", rating:8, startTime:"22:20")
let redLightAct = GlowAct(name: "The RedLight act", rating:9, startTime: "23:20")
let cityAct = City(name: "Eindhoven", population: 220000)
cityAct.addAct(blueLightAct)
cityAct.addAct(redLightAct)
blueLightAct.showInfo()
cityAct.showInfo()
