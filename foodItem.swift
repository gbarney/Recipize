//
//  foodItem.swift
//  RecipizeFINALPROJECT
//
//  Created by Gwen Barney on 5/12/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class Recipe: NSObject {
    
    var directions = ""
    var notes = ""
    
    convenience init(directions: String, notes: String) {
        self.init()
        self.directions = directions
        self.notes = notes

}
}

