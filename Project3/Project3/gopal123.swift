//
//  gopal123.swift
//  Project3
//
//  Created by Training on 16/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class gopal123: UIViewController {
    
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var txtFldFirstName: UITextField!
   
   
    @IBOutlet weak var lblLastName: UILabel!
    
    @IBOutlet weak var txtFldLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldFirstName.text = "madhan"
        txtFldFirstName.textColor = .black
        txtFldFirstName.backgroundColor = .yellow
        
        txtFldLastName.text = "gopal"
        txtFldLastName.textColor = .black
        txtFldLastName.backgroundColor = .yellow
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
