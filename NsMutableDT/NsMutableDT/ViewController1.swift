//
//  ViewController1.swift
//  NsMutableDT
//
//  Created by Training on 04/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var txtFldName: UITextField!
    
    @IBOutlet weak var tblVw: UITableView!
      var arrName = NSMutableArray ()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnAddAction(_ sender: Any) {
     //   arrName.insert(txtFldName.text!, at: 0)
        arrName.add(txtFldName.text!)
        txtFldName.text = ""
        tblVw.reloadData()
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblVw.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as! TableViewCell1
        cell.lblText.text = arrName[indexPath.row] as? String
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        
        self.txtFldName.text = arrName[indexPath.row] as? String
        
       // arrName.removeObject(at: indexPath.row)
       // tblVw.reloadData()
   let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
       
        nextVC.selectedData = arrName[indexPath.row] as!String
     
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
}
}
