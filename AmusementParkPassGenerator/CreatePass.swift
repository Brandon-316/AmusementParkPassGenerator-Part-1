//
//  CreatePass.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/20/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit


////////////////////
//Check if Under 5//
////////////////////
func checkAgeUnder5(day: Int, month: Int, year: Int) -> Bool {
    let dateOfBirth = NSDateComponents()
    dateOfBirth.day = day
    dateOfBirth.month = month
    dateOfBirth.year = year
    
    let calendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)
    let birthDate = calendar?.date(from: dateOfBirth as DateComponents)
    let currentDate = NSDate()
    
    var durationDateComponents = calendar?.components(NSCalendar.Unit.day, from: birthDate!, to: currentDate as Date)
    
    let numberOfDaysAlive = durationDateComponents?.day
    
    if numberOfDaysAlive! < 2190 {
        return true
    } else {
        return false
    }
}


///////////////
//Create Pass//
///////////////
func createPass(entrant: Entrant) throws {
    if ((entrant.firstName == "" || entrant.lastName == "") && entrant.entrantType.nameRequired == true) {
        throw ErrorTypes.EnterFullName
    }
//    if entrant.dayOfBirth < 1 || entrant.monthOfBirth < 1 || entrant.yearOfBirth < 1 && entrant.entrantType.birthDateRequired == true {
//        throw ErrorTypes.EnterBirthDate
//    }
    if entrant.dayOfBirth < 1 || entrant.monthOfBirth < 1 || entrant.yearOfBirth < 1 && entrant.entrantType.birthDateRequired == true {
        throw ErrorTypes.EnterBirthDate
    }
    if entrant.street == "" || entrant.city == "" || entrant.state == "" || entrant.zip == "" && entrant.entrantType.addressRequired == true {
        throw ErrorTypes.EnterFullAddress
    }
    if entrant.entrantType == .FreeChild && checkAgeUnder5(day: entrant.dayOfBirth, month: entrant.monthOfBirth, year: entrant.yearOfBirth) == false {
        throw ErrorTypes.ChildIsOlderThan5
    }else{
        print("\(entrant.firstName) \(entrant.lastName)\n\(entrant.street)\n\(entrant.city) \(entrant.state) \(entrant.zip)\nBirth Date: \(entrant.monthOfBirth)/\(entrant.dayOfBirth)/\(entrant.yearOfBirth)\nEntrant type:\(entrant.entrantType)\nFood discount: \(entrant.entrantType.foodDiscount)%\nMerchandise discount \(entrant.entrantType.merchandiseDiscount)%")
    }
}




    

    
    
    
    





