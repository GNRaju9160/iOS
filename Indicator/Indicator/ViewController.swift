//
//  ViewController.swift
//  Indicator
//
//  Created by Training on 15/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    @IBAction func actionStart(_ sender: Any) {
        indicator.startAnimating()
        
    }
    @IBAction func actionStop(_ sender: Any) {
        indicator.stopAnimating()
    }
    

}

