

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var txtFldUser: UITextField!
    
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var btnCheckbox: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldUser.layer.borderWidth = 1
        txtFldUser.layer.borderColor = UIColor.red.cgColor
        txtFldUser.layer.cornerRadius = 3
        txtFldUser.layer.masksToBounds = false
        txtFldUser.layer.shadowRadius = 3.0
        txtFldUser.layer.shadowColor = UIColor.black.cgColor
        txtFldUser.layer.shadowOpacity = 1.0
        txtFldPassword.layer.borderWidth = 1
        txtFldPassword.layer.borderColor = UIColor.red.cgColor
        txtFldPassword.layer.cornerRadius = 3
        txtFldPassword.layer.masksToBounds = false
        txtFldPassword.layer.shadowRadius = 3.0
        txtFldPassword.layer.shadowColor = UIColor.yellow.cgColor
        txtFldPassword.layer.shadowOpacity = 1.0
        if let name =  UserDefaults.standard.object(forKey: "Name") as? String{
            txtFldUser.text = name
            btnCheckbox.isSelected = true
        }
        if let name =  UserDefaults.standard.object(forKey: "Password") as? String{
            txtFldPassword.text = name
            btnCheckbox.isSelected = true
        }
    }
    @IBAction func btnCheckboxAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        
        if btnCheckbox.isSelected{
            
            UserDefaults.standard.set(txtFldUser.text!, forKey: "Name")
            UserDefaults.standard.set(txtFldPassword.text!, forKey: "Password")
            
        }
        if txtFldUser.text == "" || txtFldPassword.text == ""
        {
            let alert = UIAlertController(title: "Information", message: "Its Mandatort to enter all the fields", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
            alert.addAction(ok)
            alert.addAction(cancel)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutViewController") as! LogoutViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
    }
    
}


