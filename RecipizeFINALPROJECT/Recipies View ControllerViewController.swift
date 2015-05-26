

import UIKit

class Recipies_View_ControllerViewController: UIViewController {

    @IBOutlet weak var ingredientsTextBox: UITextView!
    @IBOutlet weak var notesTextBox: UITextView!
    var food : foodItem!
    
    override func viewDidLoad() {
        //unexpectedly found nil while unwrapping an Optional value (error for code below)
        ingredientsTextBox.text = food.directions
        notesTextBox.text! = food.notes
        super.viewDidLoad()
        
    }

    @IBAction func onRecipeTapGestureTapped(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)

    }

    @IBAction func onCancelButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func saveDirectionsButtonTapped(sender: UIBarButtonItem) {
        food.directions = ingredientsTextBox.text
        food.notes = notesTextBox.text
    }
 
}