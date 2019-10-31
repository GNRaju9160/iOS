//
//  ViewController2.swift
//  GallaryApp2
//
//  Created by Training on 22/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnGallary(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    

    

}
