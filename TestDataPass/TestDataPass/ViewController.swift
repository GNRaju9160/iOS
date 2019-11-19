
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldRollNum1: UITextField!
    @IBOutlet weak var txtFldName1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
  
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    @IBAction func actNext(_ sender: Any) {
        
        let nextVCObj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
        
        nextVCObj?.nameVal = txtFldName1.text!
         nextVCObj?.rollVal = txtFldRollNum1.text!
        
        
        self.navigationController?.pushViewController(nextVCObj!, animated: true)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

