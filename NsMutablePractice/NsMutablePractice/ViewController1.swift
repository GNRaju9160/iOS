//
//  ViewController1.swift
//  NsMutablePractice
//
//  Created by Training on 05/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrName = NSMutableArray()
    var selectindex = Int()
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var tblVw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    NotificationCenter.default.addObserver(self, selector: #selector(postNotification(_:)), name: NSNotification.Name("Updatevalue"), object: nil)
        
    }
    @IBAction func btnAdd(_ sender: Any) {
       // arrName.insert(txtFldName.text!, at: 0)
        arrName.add(txtFldName.text!)
        txtFldName.text = ""
        tblVw.reloadData()

    }
    @objc func postNotification(_ notification: Notification) {
        let objectVal = notification.object as? String ?? ""
        
        arrName.replaceObject(at: selectindex, with: objectVal)
        txtFldName.text = ""
        tblVw.reloadData()
    }

    @IBAction func BtnUpdate(_ sender: Any) {
   
        arrName.replaceObject(at: selectindex, with: txtFldName.text!)
        txtFldName.text = ""
        tblVw.reloadData()
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblVw.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.lblText.text = arrName[indexPath.row] as? String
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   self.txtFldName.text = arrName[indexPath.row] as? String
        selectindex = indexPath.row
      //  arrName.removeObject(at: indexPath.row)
         tblVw.reloadData()
  let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
     

        nextVC.selectedData = arrName[indexPath.row] as!String
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
return 80
        
    }
}
