//
//  ViewController.swift
//  practicetrevisonDatePick
//
//  Created by Training on 10/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit
struct userInfo {
    var name = String()
    var image = UIImage()
}

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var picVw: UIPickerView!
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    var arrData =  [userInfo(name: "Andhra Pradesh",image: #imageLiteral(resourceName: "ap")),
                    userInfo(name: "Telangana",image: #imageLiteral(resourceName: "telangana")),
                    userInfo(name: "MahaRashtra",image: #imageLiteral(resourceName: "mh")),
                    userInfo(name: "Chathisgarh",image: #imageLiteral(resourceName: "chatt")),
                    userInfo(name: "Uttarpradesh",image: #imageLiteral(resourceName: "chandigarh")),
                    userInfo(name: "MadyaPradesh",image: #imageLiteral(resourceName: "mp")),
                    userInfo(name: "Newdelhi",image: #imageLiteral(resourceName: "nd")),
                    userInfo(name: "Haryana",image: #imageLiteral(resourceName: "hr")),
                    userInfo(name: "Punjab",image: #imageLiteral(resourceName: "punjab")),
                    userInfo(name: "Chandigarh",image: #imageLiteral(resourceName: "chandigarh")),
                    userInfo(name: "Uttarakhand",image: #imageLiteral(resourceName: "uk")),
                    userInfo(name: "Karanataka",image: #imageLiteral(resourceName: "ka"))]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picVw.delegate = self
        picVw.dataSource = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrData.count
        
    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

    
        
        
    
        //  }
        //    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //      //  lblText.text = arrNames[row]
        //
        //    }
        
        
        
}

