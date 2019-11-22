import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblValue: UILabel!
    @IBOutlet weak var stepperValue: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperValue.wraps = true
        stepperValue.autorepeat = true
        stepperValue.maximumValue = 5
    }

    @IBAction func actStepper(_ sender: UIStepper) {
         lblValue.text = Int(sender.value).description
    }
    
}

