

import UIKit

class Recipies_View_ControllerViewController: UIViewController, UINavigationControllerDelegate, UITextViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ingredientsTextBox: UITextView!
    @IBOutlet weak var notesTextBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = recipe.name
        ingredientsTextBox.text = recipe.directions
        notesTextBox.text = recipe.notes
    }
    
    var recipe : Recipe!

    @IBAction func onRecipeTapGestureTapped(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)

    }

    @IBAction func onCancelButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onTappedSaveButton(sender: UIBarButtonItem) {
        recipe.name = nameTextField.text
        recipe.directions = ingredientsTextBox.text
        recipe.notes = notesTextBox.text
    }

}