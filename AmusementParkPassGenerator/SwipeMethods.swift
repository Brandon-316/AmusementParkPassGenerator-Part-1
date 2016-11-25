//
//  SwipeMethods.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/19/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox


var doubleSwipeCountdown = Timer()
var count = 0

var accessGrantedSound: SystemSoundID = 0
var accessDeniedSound: SystemSoundID = 1

let timeController: TimeController = TimeController()


func swipeMethod(entrant: Entrant, location: AccessArea)  {
    if location == .Amusement && entrant.entrantType.canAccessAmusementAreas == false {
        print("You are not currently authorized to access the Amusement Areas.")
        loadAccessDeniedSound()
        playAccessDeniedSound()
//Grants access to ride, to skip line and starts timer
    }else if location == .Amusement && entrant.entrantType.canAccessAmusementAreas == true && entrant.entrantType.canSkipRideLines == true && count == 0 {
        timeController.startCountdown()
        loadAccessGrantedSound()
        playAccessGrantedSound()
        CheckBirthday()
        print("Access granted & feel free to skip the line")
//Grants access to ride and starts timer
    }else if location == .Amusement && entrant.entrantType.canAccessAmusementAreas == true && count == 0 {
        timeController.startCountdown()
        loadAccessGrantedSound()
        playAccessGrantedSound()
        CheckBirthday()
        print("Access granted")
//Message for only 1 swipe per guest on a 5 minute timer
    }else if location == .Amusement && entrant.entrantType.canAccessAmusementAreas == true && count > 0{
        print("Only 1 swipe per guest")
        loadAccessDeniedSound()
        playAccessDeniedSound()
    }else if location == .Kitchen && entrant.entrantType.canAccessKitchenAreas == false{
        print("You are not currently authorized to access the Kitchen Areas.")
        loadAccessDeniedSound()
        playAccessDeniedSound()
    }else if location == .RideControl && entrant.entrantType.canAccessRideControlAreas == false {
        print("You are not currently authorized to access the Ride Control Areas.")
        loadAccessDeniedSound()
        playAccessDeniedSound()
    }else if location == .RideControl && entrant.entrantType.canAccessRideControlAreas == false {
        print("You are not currently authorized to access the Ride Control Areas.")
        loadAccessDeniedSound()
        playAccessDeniedSound()
    }else if location == .Office && entrant.entrantType.canAccessOfficeAreas == false {
        print("You are not currently authorized to access the Office Areas.")
        loadAccessDeniedSound()
        playAccessDeniedSound()
    }else{
        print("Access Granted")
        loadAccessGrantedSound()
        playAccessGrantedSound()
    }
}




/////////////////
//Access Sounds//
/////////////////
func loadAccessGrantedSound() {
    let pathToSoundFile = Bundle.main.path(forResource: "AccessGranted", ofType: "wav")
    let soundURL = URL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL as CFURL, &accessGrantedSound)
}

func playAccessGrantedSound() {
    AudioServicesPlaySystemSound(accessGrantedSound)
}

func loadAccessDeniedSound() {
    let pathToSoundFile = Bundle.main.path(forResource: "AccessDenied", ofType: "wav")
    let soundURL = URL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL as CFURL, &accessDeniedSound)
}

func playAccessDeniedSound() {
    AudioServicesPlaySystemSound(accessDeniedSound)
}
    
    
