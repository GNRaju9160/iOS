//
//  ViewController.swift
//  Validation
//
//  Created by Training on 18/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblText.isHidden = true
        
        
    }
    @IBAction func btnLogin(_ sender: Any) {
        lblText.isHidden = true
        guard let email = txtFldEmail.text, txtFldEmail.text?.utf8CString.count != 0 else {
            lblText.isHidden = false
            lblText.text = "Please Enter Your Email"
            return
        }
        if isValidEmail(emailID: email) == false {
            lblText.isHidden = false
            lblText.text = "Please Enter Valid Email"
            return
        }
        guard let _ = txtFldPassword.text, txtFldPassword.text?.utf8CString.count != 0 else {
            lblText.isHidden = false
            lblText.text = "Please Enter Your Password"
            return
        }
        
    }
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
        
    }
    
}

