

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    var webString = ""
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: webString)
        let myRequest = NSURLRequest(URL: URL!)
        myWebView.loadRequest(myRequest)
    }

}
