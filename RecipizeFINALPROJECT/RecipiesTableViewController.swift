//
//  RecipiesTableViewController.swift
//  RecipizeFINALPROJECT
//
//  Created by pcshah on 5/7/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class RecipiesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var recipieTableView: UITableView!
    var recipiesArray = ["pie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return recipiesArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = recipieTableView.dequeueReusableCellWithIdentifier("recipeCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = recipiesArray[indexPath.row]
        return cell
    }
}
