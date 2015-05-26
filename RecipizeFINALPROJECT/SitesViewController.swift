

import UIKit

class SitesViewController: UIViewController {

    var urlString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onGoogleButtonTapped(sender: UIButton) {
        urlString = "https://www.google.com"
        
    }
    @IBAction func onAllRecipesButtonTapped(sender: UIButton) {
        urlString = "http://allrecipes.com"
    }
    
    @IBAction func onFoodNetworkButtonTapped(sender: UIButton) {
        urlString = "http://www.foodnetwork.com"

    }
    
    @IBAction func onYummlyButtonTapped(sender: UIButton) {
        urlString = "http://www.yummly.com"

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wvc = segue.destinationViewController as! WebViewController
        wvc.webString = urlString
    }

    @IBAction func onDoneButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}

