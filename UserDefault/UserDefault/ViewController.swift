
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //     btnCheckBox = UIButton.init(type: .custom)
//        btnCheckBox.setImage(UIImage.init(named: "CheckBoxEmpty"), for: .normal)
//        btnCheckBox.setImage(UIImage.init(named: "CheckBoxSelect"), for: .selected)
        //   btnCheckBox.addTarget(self, action: #selector(self.btnCheckBox), for: .touchUpInside)
        if let name =  UserDefaults.standard.object(forKey: "Name") as? String{
            txtFldEmail.text = name
            btnCheckBox.isSelected = true
        }
        if let name =  UserDefaults.standard.object(forKey: "Password") as? String{
            txtFldPassword.text = name
        }
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btn_box(sender: UIButton) {
//        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
//            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        }) { (success) in
//            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
//                sender.transform = .identity
//            }, completion: nil)
//        }
    }
    @IBAction func btnLogin(_ sender: Any) {
        
        if btnCheckBox.isSelected {
            
         UserDefaults.standard.set(txtFldEmail.text!, forKey: "Name")
         UserDefaults.standard.set(txtFldPassword.text!, forKey: "Password")
            
        }
        
        let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(nextVc, animated: true)
        
    }
    
}

