//
//  ViewControllerS.swift
//  TableViewSections
//
//  Created by Training on 25/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerS: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tblStates: UITableView!
    
    
    let sections = ["Fruits","Vegetabls","Animals"]
    let items = [ ["APPLE","Banana","JAVA","Papaya","Mango","Grapes","Orange","Pineapple"], // Fruits
        ["TOMATO","BRINJAL","ONION","Craneberry","Beans","Cabbage","Potato","carrot"], // Vegetabls
        ["LION","TIGER","ELEPHANT","Horse","DOg","Monkey","Donkey","Fox","Zeebra"], // Animals
    ]
    
    let titlename = ["END","END","END"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return self .titlename[section]
        
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        
        view.tintColor = .red
    }
    
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return self.sections[section]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellS", for: indexPath) as! TableViewCellS
        
        cell.lblStates!.text = items [indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.yellow
        


}
}
