//
//  GroceryListTableViewController.swift
//  RecipizeFINALPROJECT
//
//  Created by pcshah on 5/7/15.
//  Copyright (c) 2015 Lindsey Finn. All rights reserved.
//

import UIKit

class GroceryListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var groceryListTableView: UITableView!
    var foodItems = ["frozen pizza", "Lettuce", "Tomato", "Cheese"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return foodItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = groceryListTableView.dequeueReusableCellWithIdentifier("groceryCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = foodItems[indexPath.row]
        return cell
    }
    
    
    @IBAction func onEditTappedButton(sender: UIBarButtonItem)
    {
        if sender.tag == 0 {
            groceryListTableView.editing = true
            sender.tag = 1
        }
        else {
            groceryListTableView.editing = false
            sender.tag = 0
        }
    }
    
}
