

import UIKit

class RecipiesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var recipieTableView: UITableView!
    var recipies : [fooditem] = ["pie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return recipiesArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = recipieTableView.dequeueReusableCellWithIdentifier("recipeCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = recipiesArray[indexPath.row]
        return cell
    }

    @IBAction func onAddRecipeButtonTapped(sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "Add Recipe", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = "Add Recipe Here"
        }
        var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancelAction)
        
        var addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default) { (action) -> Void in
            var recipeTextField = alert.textFields?[0] as! UITextField
            self.recipiesArray.append((name: recipeTextField.text))
            self.recipieTableView.reloadData()
        }
        alert.addAction(addAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

    }



