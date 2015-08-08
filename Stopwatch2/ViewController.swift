//
//  ViewController.swift
//  Stopwatch2
//
//  Created by Marc Johlic on 1/15/15.
//  Copyright (c) 2015 pogul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var swDisplay: UILabel!
    
    @IBOutlet var playButton: UIBarButtonItem!
    
    var timer = NSTimer()
    var count = 0
    
    @IBAction func swPlay(sender: AnyObject) {
        playButton.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("start"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func swPause(sender: AnyObject) {
        playButton.enabled = true
        timer.invalidate()
    }
    
    @IBAction func swReset(sender: AnyObject) {
        count = 0
        swDisplay.text = String(count)
    }
    
    func start() {
        count++
        swDisplay.text = String(count)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

