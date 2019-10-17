//
//  ViewController.swift
//  ModelVcImage
//
//  Created by Training on 17/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldPass: UITextField!
    @IBOutlet weak var txtFldMob: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldClass: UITextField!
    @IBOutlet weak var txtFldCity: UITextField!
    @IBOutlet weak var txtFldState: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func btnSign(_ sender: Any) {
        //  objLoginModel.imgStr = imgVw.image!
        objLoginModel.NameStr = txtFldName.text!
        objLoginModel.MobStr = txtFldMob.text!
        objLoginModel.ClassStr = txtFldClass.text!
        objLoginModel.EmailStr = txtFldEmail.text!
        objLoginModel.ImageUser = imgVw.image!
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
 
    
}

