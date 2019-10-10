

import UIKit


class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
   
    
    
    @IBOutlet weak var uiVw: UIView!
    @IBOutlet weak var lblText: UILabel!
   
    @IBOutlet weak var pckVw: UIPickerView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 11
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
       return 250
        
        
        
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
      
            
            var myImageView = UIImageView()
        
            switch row {
            case 0:
                myImageView = UIImageView(image: UIImage(named:"A.P."))
            case 1:
                myImageView = UIImageView(image: UIImage(named:"T.S."))
            case 2:
                myImageView = UIImageView(image: UIImage(named:"M.H."))
            case 3:
                myImageView = UIImageView(image: UIImage(named:"Chattisgarh"))
            case 4:
                myImageView = UIImageView(image: UIImage(named:"U.P"))
            case 5:
                myImageView = UIImageView(image: UIImage(named:"M.P."))
            case 6:
                myImageView = UIImageView(image: UIImage(named:"new delhi"))
            case 7:
                myImageView = UIImageView(image: UIImage(named:"haryana"))
            case 8:
                myImageView = UIImageView(image: UIImage(named:"punjab"))
            case 9:
                myImageView = UIImageView(image: UIImage(named:"chandigarh"))
            case 10:
                myImageView = UIImageView(image: UIImage(named:"u.k"))
            case 11:
                myImageView = UIImageView(image: UIImage(named:"K.A."))
            default:
                myImageView.image = nil
                
                return myImageView
            }
            return myImageView
        }
    
    
//    var arrData = ["Andhra Pradesh","Telangana","MahaRashtra","Chathisgarh","Uttarpradesh","MadyaPradesh","Newdelhi","Haryana","Punjab","Chandigarh","Uttarakhand","Karanataka"
//    ]
//}
//func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//
//
//    lblText.text = arrData[row]
}




