//
//  ViewController.swift
//  UserDefaults
//
//  Created by Training on 31/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

import CoreData
class ViewController: UIViewController {
    @IBOutlet weak var txtFldUserName: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldConfPass: UITextField!
    @IBOutlet weak var txtFldPhone: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        
        if txtFldUserName.text == "" || txtFldEmail.text == "" || txtFldPassword.text == "" || txtFldConfPass.text == "" || txtFldPhone.text == ""
        {
            let alert = UIAlertController(title: "Information", message: "Its Mandatort to enter all the fields", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
            alert.addAction(ok)
            alert.addAction(cancel)
            
            self.present(alert, animated: true, completion: nil)
            
        }
            
        else if (txtFldPassword.text != txtFldConfPass.text)
        {
            let alert = UIAlertController(title: "Information", message: "Password does not match", preferredStyle: .alert
            )
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
            alert.addAction(ok)
            alert.addAction(cancel)
            
            self.present(alert, animated: true, completion: nil)
            
        }

        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
     
    }
    @IBAction func btnHaveAccount(_ sender: Any) {
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
        
    }
    
}

