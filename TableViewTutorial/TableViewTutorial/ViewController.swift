//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by Training on 24/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    @IBOutlet weak var tblVwTraineesData: UITableView!
    
    let nameArr = ["Raju","kishore","Gopal","Vivek","Siddarth","Chandan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tblVwTraineesData.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
      cell.lblTraineesNames.text = nameArr[indexPath.row]
        return cell
        
    }
    func tblvwTraineesData(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
