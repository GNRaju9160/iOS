//
//  DetailVC.swift
//  ModelVcImage
//
//  Created by Training on 17/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var imgVw2: UIImageView!
    @IBOutlet weak var txtFldName2: UITextField!
    @IBOutlet weak var txtFldMob2: UITextField!
    @IBOutlet weak var txtFldClass2: UITextField!
    @IBOutlet weak var txtFldEmail2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFldName2.text = objLoginModel.NameStr
        txtFldMob2.text = objLoginModel.MobStr
        txtFldClass2.text = objLoginModel.ClassStr
        txtFldEmail2.text = objLoginModel.EmailStr
        imgVw2.image = objLoginModel.ImageUser
    }
    
    
}
