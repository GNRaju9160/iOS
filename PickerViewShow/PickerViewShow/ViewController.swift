//
//  ViewController.swift
//  PickerViewShow
//
//  Created by Training on 10/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var countryArr:[String] = Array()
    var statesArr:[String] = Array()
    
    @IBOutlet weak var picVw: UIPickerView!
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picVw.dataSource = self
        self.picVw.delegate = self
        
        countryArr.append("India")
        countryArr.append("Usa")
        countryArr.append("Canada")
        countryArr.append("Australia")
        countryArr.append("germani")
        countryArr.append("Srilanka")
        countryArr.append("Bangladesh")
        countryArr.append("china")
        
        
        statesArr.append("29")
        statesArr.append("15")
        statesArr.append("50")
        statesArr.append("30")
        statesArr.append("40")
        statesArr.append("25")
        statesArr.append("30")
        statesArr.append("25")
        
        
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
   return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return countryArr.count
            
        }
        return statesArr.count
        
        }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
        if component == 0{
            
  return countryArr[row]
        }
        return statesArr[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let countrySelected = countryArr[pickerView.selectedRow(inComponent: 0)]
        
        let statesSelected = statesArr[pickerView.selectedRow(inComponent: 1)]
        
        lblText.text = "\(countrySelected) has\(statesSelected) number of states."
        
        
        
        
        
        
    }
    
    
    
    
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let countrySelected = countryArr[pickerview.selectedRow(inComponent: 0)]
//    }


}


