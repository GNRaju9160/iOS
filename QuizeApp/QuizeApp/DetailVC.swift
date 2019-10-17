
import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldName: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

          txtFldName.text = objLoginModel.nameStr
          txtFldPassword.text = objLoginModel.passwordStr
        // Do any additional setup after loading the view.
    }
   
}
