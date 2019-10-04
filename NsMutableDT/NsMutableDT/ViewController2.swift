//
//  ViewController2.swift
//  NsMutableDT
//
//  Created by Training on 04/10/19.
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
    @IBAction func btnUpdate(_ sender: Any) {
      //  txtFldTrans.text = CustomNSError
        self.navigationController?.popViewController(animated: true)
    
        func txtFldTransDidEndEditing(_ textField: UITextField) {
        
}
}
}
