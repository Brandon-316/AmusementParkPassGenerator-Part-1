//
//  Timer.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/24/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation


class TimeController: NSObject {
    
    var secondSwipeCount = Timer()
    var swipeCount = 0
    

func startCountdown() {
        doubleSwipeCountdown = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimeController.runCountdown), userInfo: nil, repeats: true)
}

func runCountdown() {
    count = 300
    if (count > 0){
        count -= 1
    }else{
        doubleSwipeCountdown.invalidate()
    }
    }

}
