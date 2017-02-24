//
//  StopWatch.swift
//  StopWatch
//
//  Created by Zeyad El-arabaty on 2/16/17.
//  Copyright © 2017 Zeyad El-arabaty. All rights reserved.
//

import UIKit

class StopWatch: UIViewController {

    var seconds = 0;
    var minutes = 0;
    var mils = 0;
    
    func countUp(){
        mils+=1;
        if(mils>99){
            mils = 0;
            seconds+=1;
        }
        if(seconds>=60){
            seconds = 0;
            minutes += 1;
        }
        if(minutes>=60){
            minutes = 0;
            seconds = 0;
            mils = 0;
        }
        
        
    }
    func reset(){
        seconds = 0;
        minutes = 0;
        mils = 0;
    }
    
    
    
    
    

}
