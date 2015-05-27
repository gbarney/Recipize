

import UIKit

class Recipies_View_ControllerViewController: UIViewController, UINavigationControllerDelegate, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var ingredientsTextBox: UITextView!
    @IBOutlet weak var notesTextBox: UITextView!
   
    var foodItems = foodItem()
    
    override func viewDidLoad() {
        ingredientsTextBox.text = foodItems.directions
        notesTextBox.text = foodItems.notes
        super.viewDidLoad()
        
    }

    @IBAction func onRecipeTapGestureTapped(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)

    }

    @IBAction func onCancelButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onSaveRecipeInfoButtonTapped(sender: UIButton) {
        foodItems.directions = ingredientsTextBox.text
        foodItems.notes = notesTextBox.text
    }
 
    @IBAction func saveDirectionsButtonTapped(sender: AnyObject) {
        
        foodItems.directions = ingredientsTextBox.text
        foodItems.notes = notesTextBox.text
    }

}