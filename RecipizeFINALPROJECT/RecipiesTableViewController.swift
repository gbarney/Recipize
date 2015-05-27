

import UIKit

class RecipiesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var recipieTableView: UITableView!
    var recipes : [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipes.append(Recipe(name: "pie", directions: "Ingridients: 5 egg yolks, 1 (14 ounce) can sweetened condensed milk, 1/2 cup key lime juice, 1 (9 inch) prepared graham cracker crust Directions: Preheat oven to 375 degrees F (190 degrees C).Combine the egg yolks, sweetened condensed milk and lime juice. Mix well. Pour into unbaked graham cracker shell. Bake in preheated oven for 15 minutes. Allow to cool. Top with whipped topping and garnish with lime slices if desired.", notes: ""))
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return recipes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = recipieTableView.dequeueReusableCellWithIdentifier("recipeCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = recipes[indexPath.row].name
        return cell
    }
    
    func tableView(recipeTableView: UITableView, commitEditingStyle editingStyle:UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            recipes.removeAtIndex(indexPath.row)
            recipeTableView.reloadData()
        }
    }

    @IBAction func onAddRecipieButtonTapped(sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "Add Recipe", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in textField.placeholder
            = "Add College Here"
        }
        var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(cancelAction)
        
        var addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default) { (action) -> Void in var nameTextField = alert.textFields?[0] as! UITextField
            self.recipes.append(Recipe(name: nameTextField.text))
            self.recipieTableView.reloadData() }
        alert.addAction(addAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dvc = segue.destinationViewController as! Recipies_View_ControllerViewController
        var index = recipieTableView.indexPathForSelectedRow()?.row
        dvc.recipe = recipes[index!]
    }
    
    
    
}



