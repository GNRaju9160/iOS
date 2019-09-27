//
//  TableView2.swift
//  TableViewTutorial
//
//  Created by Training on 24/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class TableView2: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
  
    @IBOutlet weak var tblVwAnimalsData: UITableView!
   
    let animalsArr = ["Lion","Tiger","Elephant","Leopard","Rabit","Deer","Horse","Dog","Camel","Lion","Tiger","Elephant","Leopard","Rabit","Deer","Horse","Dog","Camel"]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
        
    
            
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return animalsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblVwAnimalsData.dequeueReusableCell(withIdentifier: "TableViewCell2") as! TableViewCell2
        
        cell.lblAnimals.text = animalsArr[indexPath.row]
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
        
        
    }
            
            
            

        
        
        
        
}


