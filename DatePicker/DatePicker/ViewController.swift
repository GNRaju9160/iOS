//
//  ViewController.swift
//  DatePicker
//
//  Created by Training on 10/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePick: UIDatePicker!
    @IBOutlet weak var lblDate: UILabel!
    var arrDate = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnAction(_ sender: Any) {
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        arrDate = dateFormatter.string(from: datePick.date)
        
        lblDate.text = arrDate
        
        
        
    }
    

}
