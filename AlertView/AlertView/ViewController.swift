//
//  ViewController.swift
//  AlertView
//
//  Created by Training on 18/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    @IBOutlet weak var txtFldPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    lblText.isHidden = true

    }
    @IBAction func btnLogin(_ sender: Any) {
        
       if txtFldEmail.text!.count == 0 {
        alert()
        }
        
        
        
        
        
        
        
    }
        func alert(){
            let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
            
            // Create the actions
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                UIAlertAction in
                NSLog("OK Pressed")
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
                UIAlertAction in
                NSLog("Cancel Pressed")
            }
            
            
            
            
            
            
            
        }
    
}

