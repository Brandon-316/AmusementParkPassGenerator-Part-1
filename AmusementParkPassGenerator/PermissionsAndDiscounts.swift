//
//  PermissionsAndDiscounts.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/19/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit

/////////////////////////////
//Permissions and Discounts//
/////////////////////////////
enum EntrantPassType {
    case Classic
    case VIP
    case FreeChild
    case HourlyFoodServices
    case HourlyRideServices
    case HourlyMaintenance
    case Manager
    
    var foodDiscount: Int {
        switch self {
        case .Classic:
            return 0
        case .VIP:
            return 10
        case .FreeChild:
            return 0
        case .HourlyFoodServices:
            return 15
        case .HourlyRideServices:
            return 15
        case .HourlyMaintenance:
            return 15
        case .Manager:
            return 25
        }
    }
    var merchandiseDiscount: Int {
        switch self {
        case .Classic:
            return 0
        case .VIP:
            return 20
        case .FreeChild:
            return 0
        case .HourlyFoodServices:
            return 25
        case .HourlyRideServices:
            return 25
        case .HourlyMaintenance:
            return 25
        case .Manager:
            return 25
        }
    }
    var canAccessAllRides: Bool {
        switch self {
        case .Classic:
            return true
        case .VIP:
            return true
        case .FreeChild:
            return true
        case .HourlyFoodServices:
            return true
        case .HourlyRideServices:
            return true
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var canSkipRideLines: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return true
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return false
        case .HourlyRideServices:
            return false
        case .HourlyMaintenance:
            return false
        case .Manager:
            return false
        }
    }
    var canAccessAmusementAreas: Bool {
        switch self {
        case .Classic:
            return true
        case .VIP:
            return true
        case .FreeChild:
            return true
        case .HourlyFoodServices:
            return true
        case .HourlyRideServices:
            return true
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var canAccessKitchenAreas: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return true
        case .HourlyRideServices:
            return false
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var canAccessRideControlAreas: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return false
        case .HourlyRideServices:
            return true
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var canAccessMaintenanceAreas: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return false
        case .HourlyRideServices:
            return false
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var canAccessOfficeAreas: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return false
        case .HourlyRideServices:
            return false
        case .HourlyMaintenance:
            return false
        case .Manager:
            return true
        }
    }
    var nameRequired: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return true
        case .HourlyRideServices:
            return true
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
    var birthDateRequired: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return true
        case .HourlyFoodServices:
            return false
        case .HourlyRideServices:
            return false
        case .HourlyMaintenance:
            return false
        case .Manager:
            return false
        }
    }
    var addressRequired: Bool {
        switch self {
        case .Classic:
            return false
        case .VIP:
            return false
        case .FreeChild:
            return false
        case .HourlyFoodServices:
            return true
        case .HourlyRideServices:
            return true
        case .HourlyMaintenance:
            return true
        case .Manager:
            return true
        }
    }
}
