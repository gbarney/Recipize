//
//  groceryListItem.swift
//  RecipizeFINALPROJECT
//
//  Created by pcshah on 5/26/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class groceryListItem: NSObject {
    var item = ""
    
    convenience init(item: String){
        self.init()
        self.item = item
    }
   
}
