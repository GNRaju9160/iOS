//
//  ViewController2.swift
//  NsMutablePractice
//
//  Created by Training on 05/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var txtFldTrans: UITextField!
    var selectedData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldTrans.text = selectedData
        

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBack(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("Updatevalue"), object: txtFldTrans.text!)
        
        
//    NotificationCenter.default.post(name: NSNotification.Name("Updatevalue"), object: txtFldTrans.text!)
        self.navigationController?.popViewController(animated: true)

      
}
}
