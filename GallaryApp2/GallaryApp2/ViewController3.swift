//
//  ViewController3.swift
//  GallaryApp2
//
//  Created by Training on 22/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var imgVw: UIImageView!
    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPick(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        // imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
}
extension ViewController3: UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgVw.image = image
        }
        dismiss(animated: true, completion: nil)
        
        
    }
}
