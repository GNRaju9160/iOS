//
//  ViewController.swift
//  ModelVc
//
//  Created by Training on 17/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldPass: UITextField!
    @IBOutlet weak var txtFldMob: UITextField!
    @IBOutlet weak var txtFldCity: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldAadhar: UITextField!
    @IBOutlet weak var txtFldCountry: UITextField!
    @IBOutlet weak var txtFldState: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogin(_ sender: Any) {
        objLoginModel.nameStr = txtFldName.text!
        objLoginModel.passwordStr = txtFldPass.text!
        objLoginModel.MobileStr = txtFldMob.text!
        objLoginModel.CityStr = txtFldCity.text!
        objLoginModel.EmailStr = txtFldEmail.text!
        objLoginModel.AadharStr = txtFldAadhar.text!
        objLoginModel.CountryStr = txtFldCountry.text!
        objLoginModel.StateStr = txtFldState.text!
        
        let objVc = storyboard?.instantiateViewController(withIdentifier: "DetailVc") as! DetailVc
        self.navigationController?.pushViewController(objVc, animated: true)
        
    }
    
    
}

