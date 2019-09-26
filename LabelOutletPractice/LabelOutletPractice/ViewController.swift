//
//  ViewController.swift
//  LabelOutletPractice
//
//  Created by Training on 17/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblRegistration: UILabel!
    @IBOutlet weak var txtFldLastName: UITextField!
    @IBOutlet weak var txtFldFirstName: UITextField!
    @IBOutlet weak var txtFldMobile: UITextField!
    @IBOutlet weak var txtFldGender: UITextField!
    @IBOutlet weak var txtFldCity: UITextField!
    @IBOutlet weak var txtFldState: UITextField!
    @IBOutlet weak var txtFldPincode: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    
    @IBAction func btnSubmit(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       txtFldFirstName.text = "Gunja"
       txtFldLastName.text = "Nagaraju"
       txtFldMobile.text = "1234567890"
       txtFldGender.text = "Male"
       txtFldCity.text = "Kurnool"
       txtFldState.text = "Andhra Pradesh"
       txtFldPincode.text = "518422"
       txtFldEmail.text = "gnagaraj.ec@gmail.com"
        

}
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
}
