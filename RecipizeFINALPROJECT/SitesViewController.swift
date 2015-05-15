

import UIKit

class SitesViewController: UIViewController {

    var urlArray = ["https://www.google.com", "http://allrecipes.com", "http://www.foodnetwork.com", "http://www.yummly.com"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlString = urlArray

    }
    
    @IBAction func onGoogleButtonTapped(sender: UIButton) {
        
    }
    @IBAction func onAllRecipesButtonTapped(sender: UIButton) {
    }
    
    @IBAction func onFoodNetworkButtonTapped(sender: UIButton) {
    }
    
    @IBAction func onYummlyButtonTapped(sender: UIButton) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wvc = segue.destinationViewController as WebViewController
        
    }
}

