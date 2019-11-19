//
//  VC4.swift
//  TestDataSaveModelAndGetData
//
//  Created by trainee on 18/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class VC4: UIViewController {

    @IBOutlet weak var txtFldLocation: UITextField!
    @IBOutlet weak var txtFldRollNum: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actNext(_ sender: Any) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC5") as! VC5
        
        objSaveModel.rollNumVal = txtFldRollNum.text!
        objSaveModel.locationVal = txtFldLocation.text!
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    

   

}
