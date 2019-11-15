//
//  raju123ViewController.swift
//  9
//
//  Created by Training on 16/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class raju123ViewController: UIViewController {

    @IBOutlet weak var lblCompany: UILabel!
    @IBOutlet weak var txtFldCompany: UITextField!
    @IBOutlet weak var lblFounder: UILabel!
    @IBOutlet weak var txtFldFounder: UITextField!
    @IBOutlet weak var lblHeadQuarter: UILabel!
    @IBOutlet weak var txtFldHeadQuarters: UITextField!
    @IBOutlet weak var lblAreaServed: UILabel!
    @IBOutlet weak var txtFldAreaServed: UITextField!
    @IBOutlet weak var lblSevices: UILabel!
    
    @IBOutlet weak var txtFldServices: UITextField!
    @IBOutlet weak var lblISIN: UILabel!
    
    @IBOutlet weak var txtFldISIN: UITextField!
    
    @IBOutlet weak var lblType: UILabel!
    
    @IBOutlet weak var txtFldType: UITextField!
    
    @IBOutlet weak var lblProducts: UILabel!
    
    @IBOutlet weak var txtFldProducts: UITextField!
    
    @IBOutlet weak var lblWebsite: UILabel!
    
    @IBOutlet weak var txtFldWebsite: UITextField!
    
    
    
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldCompany.text = "Apple"
        txtFldCompany.textColor = .black
        txtFldCompany.backgroundColor = .yellow
        txtFldFounder.text = "steve jobs"
        txtFldFounder.textColor = .black
        txtFldFounder.backgroundColor = .yellow
        btnSubmit.setTitleColor(.yellow, for: .normal)
        txtFldHeadQuarters.text = "Californiya,USA"
        txtFldHeadQuarters.textColor = .black
        txtFldHeadQuarters.backgroundColor = .yellow
        txtFldAreaServed.text = "worldwide"
        txtFldAreaServed.textColor = .black
        txtFldAreaServed.backgroundColor = .yellow
        txtFldServices.text = "app stores"
        txtFldServices.textColor = .black
        txtFldServices.backgroundColor = .yellow
        txtFldISIN.text = "US0378331005"
        txtFldISIN.textColor = .black
        txtFldISIN.backgroundColor = .yellow
        txtFldType.text = "public"
        txtFldType.textColor = .black
        txtFldType.backgroundColor = .yellow
        txtFldProducts.text = "iphone,ipod"
        txtFldProducts.textColor = .black
        txtFldProducts.backgroundColor = .yellow
        txtFldWebsite.text = "www.apple.com"
        txtFldWebsite.textColor = .black
        txtFldWebsite.backgroundColor = .yellow
        
    }
    

    
    @IBAction func submitAction(_ sender: Any) {
        
        
        //
        
        
    }
    
    
  

}
