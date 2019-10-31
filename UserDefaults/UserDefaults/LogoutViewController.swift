//
//  LogoutViewController.swift
//  UserDefaults
//
//  Created by Training on 31/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogout(_ sender: Any) {
     let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(nextVc, animated: true)
        
        
    }
    
}
