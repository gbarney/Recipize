

import UIKit

class GroceryListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var groceryListTableView: UITableView!
    @IBOutlet weak var editButtonOutlet: UIBarButtonItem!
    var foodItems = ["Frozen Pizza", "Lettuce", "Tomato", "Cheese"]
    
    override func viewDidLoad() {
<<<<<<< HEAD
        editButtonOutlet.tag = 0
=======
        editButton.tag = 0
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
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
    
<<<<<<< HEAD
=======
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        var food = foodItems[sourceIndexPath.row]
        foodItems.removeAtIndex(sourceIndexPath.row)
        foodItems.insert(food, atIndex: destinationIndexPath.row)
    }
<<<<<<< HEAD
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
=======

func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
        if editingStyle == UITableViewCellEditingStyle.Delete {
            foodItems.removeAtIndex(indexPath.row)
            groceryListTableView.reloadData()
        }
    }
<<<<<<< HEAD
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        groceryListTableView.deselectRowAtIndexPath(indexPath, animated: true)
        let cell = groceryListTableView.cellForRowAtIndexPath(indexPath)
=======
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let cell = tableView.cellForRowAtIndexPath(indexPath)
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
        let todo = foodItems[indexPath.row]
        todo.isEmpty == !todo.isEmpty
        if todo.isEmpty == false {
            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else{
            cell?.accessoryType = UITableViewCellAccessoryType.None
            
        }
    }

<<<<<<< HEAD
    @IBAction func onEditTappedButton(sender: UIBarButtonItem)
    {
=======


    @IBAction func onEditTappedButton(sender: UIBarButtonItem) {
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
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
<<<<<<< HEAD
     
}

=======
        
    }
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
