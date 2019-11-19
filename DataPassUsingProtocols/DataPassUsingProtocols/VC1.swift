
import UIKit

class VC1: UIViewController, UpdateData {
    
    @IBOutlet weak var txtFldClass1: UITextField!
    @IBOutlet weak var txtFldName1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDataObj = self
        print("did load")
    }
    
  
    @IBAction func actNext(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        
        nextVC.nameStr = txtFldName1.text
        nextVC.classStr = txtFldClass1.text
        
        print("DataSentToVC2")
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    func updateData(nameStr: String,classStr: String) {
        txtFldName1.text = nameStr
        txtFldClass1.text = classStr
        print("UpdataData")
    }
}

