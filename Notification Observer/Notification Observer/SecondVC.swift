//
//  SecondVC.swift
//  Notification Observer
//
//  Created by trainee on 06/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var txtFldAge: UITextField!
    @IBOutlet weak var txtFldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

   
    @IBAction func btnAdd(_ sender: Any) {

        NotificationCenter.default.post(name: Notification.Name("logIn"), object: nil, userInfo: ["firstName": txtFldName.text!, "age": txtFldAge.text! ])
        self.dismiss(animated: true, completion: nil)
    }
    
}
