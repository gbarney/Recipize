

import UIKit

class GroceryListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBOutlet weak var groceryListTableView: UITableView!
    var foodItems = ["Frozen Pizza", "Lettuce", "Tomato", "Cheese"]
    
    override func viewDidLoad() {
        editButton.tag = 0
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
        
    }
