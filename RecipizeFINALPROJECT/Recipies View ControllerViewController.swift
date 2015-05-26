

import UIKit

class Recipies_View_ControllerViewController: UIViewController {

    @IBOutlet weak var ingredientsTextBox: UITextView!
    @IBOutlet weak var notesTextBox: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRecipeTapGestureTapped(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)

    }

    @IBAction func onCancelButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func saveDirectionsButtonTapped(sender: UIBarButtonItem) {
    }
 
}