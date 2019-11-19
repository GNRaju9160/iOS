
import UIKit
protocol PassData{
    func updateName(nameVal: String)
}
var objPassData: PassData?


class ViewController2: UIViewController {
    var nameStr = String()
    var classStr = String()
    
    
    @IBOutlet var txtFldName: UITextField!
    
    @IBOutlet var txtFldClass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFldName.text = nameStr
        txtFldClass.text = classStr 
        
        
    }
    
    @IBAction func popBtn(_ sender: Any) {
        objPassData?.updateName(nameVal: txtFldName.text!)
        self.dismiss(animated: true, completion: nil)
        
    }
    


}
