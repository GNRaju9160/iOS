//
//  VC3.swift
//  TestDataSaveModelAndGetData
//
//  Created by trainee on 18/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class VC3: UIViewController {

    @IBOutlet weak var txtFldPincode: UITextField!
    @IBOutlet weak var txtFldCity: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
        
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func actNext(_ sender: Any) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC4") as! VC4
        
        objSaveModel.pinCodeVal = txtFldPincode.text!
        objSaveModel.cityVal = txtFldCity.text!
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
