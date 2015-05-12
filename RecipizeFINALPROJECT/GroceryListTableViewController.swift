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

func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            foodItems.removeAtIndex(indexPath.row)
            groceryListTableView.reloadData()
        }
    }

<<<<<<< HEAD
    
=======
>>>>>>> 919ebc4ab5a25a13cc5d7173b9d55baa2cdb1ca8
    
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
    
    @IBAction func onAddGroceryButtonTapped(sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "Add Grocery", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "Add Grocery Here"
            
        }
        var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancelAction)

       
    }
}
