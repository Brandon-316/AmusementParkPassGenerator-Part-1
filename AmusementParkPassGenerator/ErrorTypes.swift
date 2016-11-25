//
//  ErrorTypes.swift
//  AmusementParkPassGenerator
//
//  Created by Brandon Mahoney on 11/19/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import Foundation
import UIKit

enum ErrorTypes: Error {
    case EnterFullName
    case EnterBirthDate
    case EnterFullAddress
    case ChildIsOlderThan5
}
