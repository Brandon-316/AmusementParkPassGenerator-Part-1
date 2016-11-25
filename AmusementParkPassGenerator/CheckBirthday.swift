//
//  CheckBirthday.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/24/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit

let MainVC: ViewController = ViewController()

let date = Date()
let units: Set<Calendar.Component> = [.hour, .day, .month, .year]
let comps = Calendar.current.dateComponents(units, from: date)


func CheckBirthday() {
    if MainVC.entrant.dayOfBirth == comps.day && MainVC.entrant.monthOfBirth == comps.month {
        print("Happy Birthday!")
    }
}
