//
//  Recipe.swift
//  RecipizeFINALPROJECT
//
//  Created by Gwen Barney on 5/26/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class Recipe: NSObject {
    
    var name = ""
    var directions = ""
    var notes = ""
    
    convenience init(name: String, directions: String, notes: String) {
        self.init()
        self.name = name
        self.directions = directions
        self.notes = notes
        
    }
    convenience init(name: String) {
        self.init()
        self.name = name
    }
   
}
