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
    
    convenience init(name: String) {
        self.init()
        self.name = name
        
    }
   
}

