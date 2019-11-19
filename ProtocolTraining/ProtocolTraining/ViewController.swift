

import UIKit

class ViewController: UIViewController ,PassData{
   
    var nameStr = String()
    var classStr = String()
    @IBOutlet var nextBtn: UIButton!
    
    @IBOutlet var txtFldName: UITextField!
    @IBOutlet var txtFldClass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     objPassData = self
    }
    @IBAction func goToNxtVC(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
        nextVC.nameStr = txtFldName.text!
        nextVC.classStr = txtFldClass.text!
        
        self.present(nextVC, animated: true, completion: nil)
    }
    func updateName(nameVal: String) {
        txtFldName.text = nameVal
    }
    

}

