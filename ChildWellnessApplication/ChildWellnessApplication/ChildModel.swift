//
//  ChildModel.swift
//  ChildWellnessApplication
//
//  Created by kampen, samuel scott on 9/27/16.
//  Copyright (c) 2016 group6. All rights reserved.
//

import Foundation
import UIKit

class Child {
    // MARK: Properties
    var name: String
    var gender: String
    var age: Int
    var birthDate: String
    var fullAgeString: String
    
    // Mark: Initialization
    
    //Initialization method for a Child Object
    //
    //Requires: name is a String containing the childs name
    //          gender is the string "male" or "female"
    //          birthDate is a String containing the childs birthdate of the form
    //          yyyy-MM-dd Example: 1989-11-23
    //
    //Ensures: The object returned is a Child object
    init?(name: String, gender: String, birthDate: String){
        if name.isEmpty || !name is String{
            return nil
        }else{
            self.name = name
        }
        
        if gender == "male" || gender == "female"{
            self.gender = gender
        }
        else{
            return nil
        }
        self.birthDate = birthDate
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let currentDateStringified = dateFormatter.stringFromDate(currentDate)
        var newCurrentDate = dateFormatter.dateFromString(currentDateStringified)
        let birthdayDateObj = dateFormatter.dateFromString(birthDate)
        let dateComponentsFormatter = NSDateComponentsFormatter()
        dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full
        let interval = newCurrentDate!.timeIntervalSinceDate(birthdayDateObj!)
        var ageString = dateComponentsFormatter.stringFromTimeInterval(interval)
        self.fullAgeString = ageString
        var delimiter = " "
        var token = ageString!.componentsSeparatedByString(delimiter)
        var ageScale = token[1]
        self.age = token[0].toInt()
        if(ageScale != "years,"){
            self.age = 0
        }
    }
}