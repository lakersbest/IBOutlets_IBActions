

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celciusText: UITextField!
    @IBOutlet weak var fahrenheitText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tagRecognizer: UITapGestureRecognizer =
            UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard))
        
        self.view.addGestureRecognizer(tagRecognizer)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    //ºf = (c *  9/5) + 32
    @IBAction func convertButton(_ sender: Any) {
        let celcius = (self.celciusText.text! as NSString).doubleValue
        let convertion = (celcius * 9/5) + 32
        
        self.fahrenheitText.text = String(convertion)
    }
    
}

