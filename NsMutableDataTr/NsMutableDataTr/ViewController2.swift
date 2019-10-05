//
//  ViewController2.swift
//  NsMutableDataTr
//
//  Created by Training on 05/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var txtFldTrans: UITextField!
      var selectedData = ""
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtFldTrans.text = selectedData
    
        // Do any additional setup after loading the view.
    }
    @IBAction func btnBackAction(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("UpdateValue"), object: txtFldTrans.text!)
        
        
          self.navigationController?.popViewController(animated: true)
    }
//    override func didMove(toParent parent: UIViewController?) {
//        return edi
//
    }
    
    
    
    
    
    

    
    
    
    
  //  func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        
    //    self.txtFldName.text = arrName[indexPath.row] as? String



