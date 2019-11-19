
import UIKit

class VC2: UIViewController {

    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func actNext(_ sender: Any) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC3") as! VC3
        
      objSaveModel.emailVal = txtFldEmail.text!
      objSaveModel.passwordVal = txtFldPassword.text!
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    

   

}
