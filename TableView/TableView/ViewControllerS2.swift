//
//  ViewControllerS2.swift
//  TableView
//
//  Created by Training on 25/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerS2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tblNames: UITableView!
    
    var namesData:[String] = ["Raju","Gopal","Kishore","Chandan","Vivek","Siddh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        tableView.delegate = self
        tableView.datasource = self
        
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return namesData.count
        }
        func numberofsections(in tableView: UITableView) -> int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
         
            _ = tblNames.dequeueReusableCell(withIdentifier: "TableViewCells2")
            
            if Cell == nil {
                Cell = UITableViewCell(style: .default,reuseIdentifier: "TableViewCells2")
            }
            Cell.textLable?.text = tableData[indexPath.row]
            return Cell
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

   
}
