//
//  EmotionObject.swift
//  ChildWellnessApplication
//
//  Created by Katie Jackson on 10/22/16.
//  Copyright © 2016 group6. All rights reserved.
//

import Foundation
import RealmSwift

class EmotionObject: Object {
    /* -1 is the default and indicates that the field was not selected at all. This should never happen because the UI automatically selects 3 (N/A) until the user chooses one of the other options. 0, 1, and 2 refer to mile, moderate, and severe selections.*/
    dynamic var tantrum = -1
    dynamic var depressed = -1
    dynamic var emResponse = -1
    dynamic var crying = -1
    dynamic var moodChanges = -1
    
    /* Description strings for each of the activities */
    dynamic var tantrumDesc = ""
    dynamic var depressedDesc = ""
    dynamic var emResponseDesc = ""
    dynamic var cryingDesc = ""
    dynamic var moodChangesDesc = ""
}