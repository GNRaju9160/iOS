//
//  ViewController.swift
//  GallaryApp
//
//  Created by Training on 22/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnGallary(_ sender: Any) {
    let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
        self.navigationController?.pushViewController(nextVc, animated: true)
        
        
    }
    

}

