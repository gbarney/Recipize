//
//  foodItem.swift
//  RecipizeFINALPROJECT
//
//  Created by Gwen Barney on 5/12/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class foodItem: NSObject {
    var name = ""
    var directions = ""
    var notes = ""
    
    convenience init(name: String, directions: String, notes: String) {
        self.init()
        self.name = name
        self.directions = directions
        self.notes = notes
        
    }
   
}

