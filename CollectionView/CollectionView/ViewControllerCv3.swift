//
//  ViewControllerCv3.swift
//  CollectionView
//
//  Created by Training on 01/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerCv3: UIViewController {

    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    var selectedImage:UIImage!
    var selectedFoodName:String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    imgVw.image = selectedImage
    lblName.text = selectedFoodName
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnAction(_ sender: Any) {
    }
    

}
