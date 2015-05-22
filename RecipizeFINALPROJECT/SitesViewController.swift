

import UIKit

class SitesViewController: UIViewController {


    var urlArray = ["https://www.google.com", "http://allrecipes.com", "http://www.foodnetwork.com", "http://www.yummly.com"]
    var urlString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onGoogleButtonTapped(sender: UIButton) {
        urlString = urlArray[0]
        
    }
    @IBAction func onAllRecipesButtonTapped(sender: UIButton) {
        urlString = urlArray[1]
    }
    
    @IBAction func onFoodNetworkButtonTapped(sender: UIButton) {
        urlString = urlArray[2]

    }
    
    @IBAction func onYummlyButtonTapped(sender: UIButton) {
        urlString = urlArray[3]

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wvc = segue.destinationViewController as! WebViewController
<<<<<<< HEAD
        
=======
        wvc.webString = urlString
>>>>>>> 05e3adfc128bd08bb6c79fac9dc4cb1c51e6fe95
    }

}

