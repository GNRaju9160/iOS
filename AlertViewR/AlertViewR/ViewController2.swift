//
//  ViewController2.swift
//  AlertViewR
//
//  Created by Training on 19/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var txtFldText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    
    
    }
    @IBAction func btnAlert1(_ sender: Any) {
        // Hide the keyboard
        txtFldText.resignFirstResponder()
        // Check and see if the text field is empty
        if (txtFldText.text == "") {
            // The text field is empty so display an Alert
            displayAlert(title: "Warning", message: "Enter something in the text field!")
        } else {
            // We have contents so display the share sheet
            displayShareSheet(shareContent: txtFldText.text!)
        }
    }
    
    func displayAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
        return
    }
    
    func displayShareSheet(shareContent:String) {
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        present(activityViewController, animated: true, completion: {})
    }
}
   
    


