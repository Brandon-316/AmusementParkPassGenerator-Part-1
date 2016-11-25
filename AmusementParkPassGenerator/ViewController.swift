//
//  ViewController.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/13/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    //////////////
    //Plug Users//
    //////////////
    
    //Child under 5
    //        let entrant = Entrant(firstName: "John", lastName: "Doe", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 11, dayOfBirth: 21, yearOfBirth: 2012, entrantType: .FreeChild)
    
    //Child over 5
    //        let entrant = Entrant(firstName: "John", lastName: "Doe", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 11, dayOfBirth: 21, yearOfBirth: 2010, entrantType: .FreeChild)
    
    //Adult VIP
    let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 11, dayOfBirth: 24, yearOfBirth: 1981, entrantType: .VIP)
    
    //Classic Guest
    //        let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 16, dayOfBirth: 3, yearOfBirth: 1981, entrantType: .Classic)
    
    //Classic Guest No Name
    //        let entrant = Entrant(firstName: "", lastName: "", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 3, dayOfBirth: 16, yearOfBirth: 1981, entrantType: .Classic)
    
    //Manager
    //        let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 3, dayOfBirth: 16, yearOfBirth: 1981, entrantType: .Manager)
    
    //Manager No Address
    //        let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "", city: "", state: "", zip: "", monthOfBirth: 3, dayOfBirth: 16, yearOfBirth: 1981, entrantType: .Classic)
    
    //Hourly Maintenance Employee
    //        let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 3, dayOfBirth: 16, yearOfBirth: 81, entrantType: .HourlyMaintenance)
    
    //Hourly Ride Service Employee No Birth Date
    //        let entrant = Entrant(firstName: "Brandon", lastName: "Mahoney", street: "201 Willet Dr.", city: "Buda", state: "TX", zip: "78610", monthOfBirth: 0, dayOfBirth: 0, yearOfBirth: 0, entrantType: .HourlyMaintenance)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        

        
        
        
/////////////////
//Generate Pass//
/////////////////
        do {
        try createPass(entrant: entrant)
        }catch ErrorTypes.EnterFullName {
            print("Please enter full name")
        }catch ErrorTypes.EnterBirthDate{
            print("Please enter birth date")
        }catch ErrorTypes.EnterFullAddress{
            print("Please enter full address")
        }catch ErrorTypes.ChildIsOlderThan5{
            print("Child is older than 5")
        }catch {
            print("Error try again")
        }
        

        
        
//////////////
//Swipe Pass//
//////////////
        
        swipeMethod(entrant: entrant, location: .Amusement)
    //    Delay for second swipe attempt
        let delayInSeconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            swipeMethod(entrant: self.entrant, location: .Amusement)
        }

        
//////Make sure to comment all of the above swipe method/delay before running below swipe methods//////
        
//        swipeMethod(entrant: entrant, location: .Kitchen)
//        swipeMethod(entrant: entrant, location: .Maintenance)
//        swipeMethod(entrant: entrant, location: .Office)
//        swipeMethod(entrant: entrant, location: .RideControl)
  
        

        
    


        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    



}

