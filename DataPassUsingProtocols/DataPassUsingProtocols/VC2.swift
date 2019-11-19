import UIKit

protocol UpdateData {
    func updateData(nameStr: String, classStr: String )
}

var updateDataObj : UpdateData?

class VC2: UIViewController{
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldClass: UITextField!
    
    var nameStr : String?
    var classStr: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtFldName.text = nameStr
        self.txtFldClass.text = classStr
        print("didload2")
    }
  
    @IBAction func goBackBtn(_ sender: Any) {
        updateDataObj?.updateData(nameStr: txtFldName.text!, classStr: txtFldClass.text!)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
