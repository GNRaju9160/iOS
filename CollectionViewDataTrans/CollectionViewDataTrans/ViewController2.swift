//
//  ViewController2.swift
//  CollectionViewDataTrans
//
//  Created by Training on 03/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imgTour: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    
    var selectedImage:UIImage!
    var selectedTourName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgTour.image = selectedImage
        lblName.text = selectedTourName
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveYoAction(_ sender: Any) {
        
        
        
    }
    
    
    
    
}
