//
//  ViewController.swift
//  ValidationN
//
//  Created by Training on 18/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    @IBOutlet weak var txtFldPass: UITextField!
    
    var validation = Validation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.isHidden = true
    }

    @IBAction func btnLogin(_ sender: Any) {
        lblText.isHidden = true
        guard let email = txtFldEmail.text,
            let password = txtFldPass.text else {
                return
        }
    let isValidateEmail = self.validation.validateEmailId(emailID: email)
    if (isValidateEmail == false){
        lblText.isHidden = false
        lblText.text = "Please Enter Your Email"
  //  print("Incorrect Email")
    return
    }
    let isValidatePass = self.validation.validatePassword(password: password)
    if (isValidatePass == false) {
          lblText.isHidden = false
           lblText.text = "Please Enter Your Password"
  //  print("Incorrect Pass")
    return
    }
        if (isValidateEmail == true || isValidatePass == true) {
              lblText.isHidden = false
             lblText.text = "Please Enter Valid Email"
    //        print("All fields are correct")
        }
    }
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
}
}
