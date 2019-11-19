//
//  VC1.swift
//  TestDataSaveModelAndGetData
//
//  Created by trainee on 18/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var txtFldName1: UITextField!
    
    @IBOutlet weak var txtFldMobileNum: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func actSave(_ sender: Any) {
    
    let nextVCObj = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as? VC2
    objSaveModel.nameVal = txtFldName1.text!
    objSaveModel.mobileNumVal = txtFldMobileNum.text!
    self.navigationController?.pushViewController(nextVCObj!, animated: true)
    
    }
    

}
