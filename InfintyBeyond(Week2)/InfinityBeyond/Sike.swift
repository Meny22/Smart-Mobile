//
//  Sike.swift
//  InfinityBeyond
//
//  Created by Fhict on 12/03/15.
//  Copyright (c) 2015 Meny Metekia. All rights reserved.
//

import UIKit
import MediaPlayer

class Sike: UIViewController {

    var moviePlayer : MPMoviePlayerController?
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("Sike", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFit
            self.view.addSubview(player.view)
        }
    }

}
