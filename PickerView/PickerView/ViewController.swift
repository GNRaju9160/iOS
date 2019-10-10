

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource  {
   
    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var picVw: UIPickerView!
    var arrData = ["Andhra Pradesh","Telangana","MahaRashtra","Chathisgarh","Uttarpradesh","MadyaPradesh","Newdelhi","Haryana","Punjab","Chandigarh","Uttarakhand","Karanataka"
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
   
        return arrData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return arrData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          lblText.text = arrData[row]
}

}
