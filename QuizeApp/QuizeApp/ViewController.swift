//
//  ViewController.swift
//  QuizeApp
//
//  Created by Training on 17/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFldPassword: UITextField!
    
    @IBOutlet weak var txtFldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveAction(_ sender: Any) {
        objLoginModel.nameStr = txtFldName.text!
        objLoginModel.passwordStr = txtFldPassword.text!

        let objVc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        self.navigationController?.pushViewController(objVc, animated: true)
        
    }
    
    
    
    
    

}

