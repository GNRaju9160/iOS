//
//  ViewController.swift
//  DataPassTxtFld
//
//  Created by Training on 14/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldCell: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnMove(_ sender: Any) {
        let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
        self.navigationController?.pushViewController(nextVc, animated: true)
        
        objModel.nameStr = txtFldName.text!
        objModel.cellStr = txtFldCell.text!
        
        
    }
    

}

