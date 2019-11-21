
import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblLati: UILabel!
    @IBOutlet weak var lblLang: UILabel!
    
    var selectedTitle = String()
    var selectedLati = String()
    var selectedLang = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = selectedTitle
        lblLati.text = selectedLati
        lblLang.text = selectedLang

    }
}
