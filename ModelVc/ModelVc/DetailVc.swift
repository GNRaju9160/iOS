//
//  DetailVc.swift
//  ModelVc
//
//  Created by Training on 17/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class DetailVc: UIViewController {
    @IBOutlet weak var txtFldName2: UITextField!
    @IBOutlet weak var txtFldPass2: UITextField!
    @IBOutlet weak var txtFldMob2: UITextField!
    @IBOutlet weak var txtFldCity2: UITextField!
    @IBOutlet weak var txtFLdEmail2: UITextField!
    @IBOutlet weak var txtFldAadhar2: UITextField!
    @IBOutlet weak var txtFldCountry2: UITextField!
    @IBOutlet weak var txtFldState2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        txtFldName2.text = objLoginModel.nameStr
        txtFldPass2.text = objLoginModel.passwordStr
        txtFldMob2.text = objLoginModel.MobileStr
        txtFldCity2.text = objLoginModel.CityStr
        txtFLdEmail2.text = objLoginModel.EmailStr
        txtFldAadhar2.text = objLoginModel.AadharStr
        txtFldCountry2.text = objLoginModel.CountryStr
        txtFldState2.text = objLoginModel.StateStr
        
    }
}
