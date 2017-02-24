//
//  ViewController.swift
//  StopWatch
//
//  Created by Zeyad El-arabaty on 2/16/17.
//  Copyright © 2017 Zeyad El-arabaty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var s =  StopWatch();
    var timer = Timer();
    @IBOutlet weak var time: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true);
    }
    
    func updateTime(){
        s.countUp();
        time.text = String(format: "%02d:%02d.%d", s.minutes, s.seconds, s.mils);
    }
    
    @IBAction func start(_ sender: UIButton) {
        s.reset();
        timer.invalidate();
        startTimer();
        
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate();
    }


}

