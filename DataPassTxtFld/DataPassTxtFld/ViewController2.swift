//
//  ViewController2.swift
//  DataPassTxtFld
//
//  Created by Training on 14/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCell: UILabel!
    
//    var selectedData = String()
//    var selectedCell = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

 lblName.text = objModel.nameStr
        lblCell.text = objModel.cellStr
        
      
    }
    


}
