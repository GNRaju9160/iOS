

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var imgVwProfile: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnGallary(_ sender: Any) {
        var mypickerController = UIImagePickerController()
        mypickerController.delegate = self
        mypickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        self.present(mypickerController, animated: true, completion: nil)
        

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgVwProfile.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)

}

}
