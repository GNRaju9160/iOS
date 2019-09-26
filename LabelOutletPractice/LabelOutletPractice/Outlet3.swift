//
//  Outlet3.swift
//  LabelOutletPractice
//
//  Created by Training on 17/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblProfile: UILabel!
    @IBOutlet weak var txtFldFirstName: UITextField!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblMobile: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var lblPincode: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtFldLastName: UITextField!
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
      lblProfile.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
     lblProfile.font = UIFont(name: lblProfile.font.fontName, size: 100)
        lblFirstName.font = UIFont(name:lblFirstName.font.fontName, size: 30)
        
      txtFldFirstName.text = "Gunja"
      txtFldFirstName.font =
        UIFont.systemFont(ofSize: 40)
      txtFldFirstName.borderStyle = .roundedRect
      txtFldLastName.text = "Nagaraj"
        txtFldLastName.font = UIFont.systemFont(ofSize: 40)
       txtFldLastName.borderStyle = .roundedRect
      txtFldMobile.text = "9160430130"
        txtFldMobile.font = UIFont.systemFont(ofSize: 40)
        txtFldMobile.borderStyle = .roundedRect
      txtFldGender.text = "Male"
          txtFldGender.font = UIFont.systemFont(ofSize: 40)
     txtFldGender.borderStyle = .roundedRect
      txtFldCity.text = "Kurnool"
        txtFldCity.font = UIFont.systemFont(ofSize: 40)
        txtFldCity.borderStyle = .roundedRect
      txtFldState.text = "Andhra Pradesh"
        txtFldState.font = UIFont.systemFont(ofSize: 40)
        txtFldState.borderStyle = .roundedRect
      txtFldPincode.text = "518422"
        txtFldPincode.font = UIFont.systemFont(ofSize: 40)
        txtFldPincode.borderStyle = .roundedRect
      txtFldEmail.text = "gnagaraj.ec@gmail.com"
         txtFldEmail.font = UIFont.systemFont(ofSize: 40)
        txtFldEmail.borderStyle = .roundedRect
      lblFirstName.layer.borderWidth = 3.0
        lblFirstName.layer.borderColor = UIColor.blue.cgColor;
        lblLastName.layer.borderWidth = 3.0
        lblLastName.layer.borderColor = UIColor.blue.cgColor;
        lblMobile.layer.borderWidth = 3.0
        lblMobile.layer.borderColor = UIColor.blue.cgColor;
        lblGender.layer.borderWidth = 3.0
        lblGender.layer.borderColor = UIColor.blue.cgColor;
        lblCity.layer.borderWidth = 3.0
         lblCity.layer.borderColor = UIColor.blue.cgColor;
        lblState.layer.borderWidth = 3.0
        lblState.layer.borderColor = UIColor.blue.cgColor;
        lblPincode.layer.borderWidth = 3.0
        lblPincode.layer.borderColor = UIColor.blue.cgColor;
        lblEmail.layer.borderWidth = 3.0
        lblEmail.layer.borderColor = UIColor.blue.cgColor;
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
