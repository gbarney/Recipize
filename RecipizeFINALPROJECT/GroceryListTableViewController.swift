

import UIKit

class GroceryListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var groceryListTableView: UITableView!
    @IBOutlet weak var editButtonOutlet: UIBarButtonItem!
    var foodItems = ["Frozen Pizza", "Lettuce", "Tomato", "Cheese"]
    
    override func viewDidLoad() {
        editButtonOutlet.tag = 0
        super.viewDidLoad()
        }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return foodItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = groceryListTableView.dequeueReusableCellWithIdentifier("groceryCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = foodItems[indexPath.row]

        return cell
    }

    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        var food = foodItems[sourceIndexPath.row]
        foodItems.removeAtIndex(sourceIndexPath.row)
        foodItems.insert(food, atIndex: destinationIndexPath.row)
    }

func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            foodItems.removeAtIndex(indexPath.row)
            groceryListTableView.reloadData()
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.groceryListTableView.allowsMultipleSelection = true
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        let todo = foodItems[indexPath.row]
        todo.isEmpty == !todo.isEmpty
        if todo.isEmpty == false {
            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else  {
            cell?.accessoryType == UITableViewCellAccessoryType.None
        }
    }

    @IBAction func onEditTappedButton(sender: UIBarButtonItem) {
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
        
        var addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default) { (action) -> Void in
            var foodTextField = alert.textFields?[0] as! UITextField
            self.foodItems.append((name: foodTextField.text))
            self.groceryListTableView.reloadData()
        }
        alert.addAction(addAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func grocerySaveButtonTapped(sender: UIBarButtonItem) {
        //I think the problem is that the new food items that are added on the table view are not being added to the array so when you try to save you only save what is already on the cells which is what is on the array. So we need to figure out how to get the new items onto the array
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
        var cell = groceryListTableView.dequeueReusableCellWithIdentifier("groceryCell", forIndexPath: indexPath) as! UITableViewCell
        //var new = cell.textLabel?.text
        //foodItems.append(new!)
        cell.textLabel?.text = foodItems[indexPath.row]
        //return foodItems.count
        return cell
    
        }
    }
}