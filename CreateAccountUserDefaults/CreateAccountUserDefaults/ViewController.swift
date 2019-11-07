

import UIKit
import CoreData
class ViewController: UIViewController {
    @IBOutlet weak var txtFldUsername: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldMobile: UITextField!
    @IBOutlet weak var txtFldPass: UITextField!
    @IBOutlet weak var txtFldConfpass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        txtFldEmail.text?.removeAll()
        txtFldUsername.text?.removeAll()
        txtFldPass.text?.removeAll()
        txtFldConfpass.text?.removeAll()
        txtFldMobile.text?.removeAll()

    }
    @IBAction func btnCreateacc(_ sender: Any) {

        UserDefaults.standard.set(txtFldMobile.text, forKey: "Mobile")
        UserDefaults.standard.set(txtFldPass.text, forKey: "Password")
        
        
        if txtFldUsername.text == "" || txtFldEmail.text == "" || txtFldMobile.text == "" || txtFldPass.text == "" || txtFldConfpass.text == "" {
            let alert = UIAlertController(title: "Information", message: "Its Mandatort to enter all the fields", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
            
        } else if (txtFldPass.text != txtFldConfpass.text) {
            let alert = UIAlertController(title: "Information", message: "Password does not match", preferredStyle: .alert
            )
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
   
    }
     
        
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
        
    }


}
    


