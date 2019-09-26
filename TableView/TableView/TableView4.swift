//
//  TableView4.swift
//  TableView
//
//  Created by Training on 25/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class TableView4: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    @IBOutlet weak var tblStatesNames: UITableView!
    
   let statesArr = ["A.P","A.P","ASSAM","BH","CH","GR","GOA","H.P","HR","JK","J&K","KRT","KL","M.P","MH","MJR","MGL","MNP","NGL","ORISSA","PB","RJ","SIKKIM","TN","T.S","THR","U.K","U.P","W.B"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return statesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        let cell = tblStatesNames.dequeueReusableCell(withIdentifier: "TableViewCell4") as! TableViewCell4
        
        cell.lblStates.text = statesArr[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}
