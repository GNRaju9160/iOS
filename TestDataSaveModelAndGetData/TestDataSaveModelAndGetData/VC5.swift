//
//  VC5.swift
//  TestDataSaveModelAndGetData
//
//  Created by trainee on 18/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class VC5: UIViewController {

    @IBOutlet weak var txtFldName: UITextField!
     @IBOutlet weak var txtFldMobile: UITextField!
    
     @IBOutlet weak var txtFldEmail: UITextField!
     @IBOutlet weak var txtFldPassword: UITextField!
    
     @IBOutlet weak var txtFldPincode: UITextField!
     @IBOutlet weak var txtFldCity: UITextField!
    
     @IBOutlet weak var txtFldRollNum: UITextField!
     @IBOutlet weak var txtFldLocation: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       txtFldName.text! = objSaveModel.nameVal
        txtFldMobile.text! = objSaveModel.mobileNumVal
        
        txtFldEmail.text! = objSaveModel.emailVal
        txtFldPassword.text! = objSaveModel.passwordVal
        
        txtFldPincode.text! = objSaveModel.pinCodeVal
        txtFldCity.text! = objSaveModel.cityVal
        
        txtFldRollNum.text! = objSaveModel.rollNumVal
        txtFldLocation.text! = objSaveModel.locationVal
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
