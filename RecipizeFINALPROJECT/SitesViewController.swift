

import UIKit

class SitesViewController: UIViewController {

    var urlArray = ["https://www.google.com", "http://allrecipes.com", "http://www.foodnetwork.com", "http://www.yummly.com"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var wvc = segue.destinationViewController as webViewController
        siteURL =
    }

}
