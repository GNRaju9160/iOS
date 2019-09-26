//
//           Sections1.swift
//  TableView
//
//  Created by Training on 25/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class Sections: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tblVwStates: UITableView!
    
    
    
    
    let sections = ["Fruits","Vegetabls","Animals"]
    let items = [ ["APPLE","Banana","JAVA","Papaya","Mango","Grapes","Orange","Pineapple"], // Fruits
        ["TOMATO","BRINJAL","ONION","Craneberry","Beans","Cabbage","Potato","carrot"], // Vegetabls
        ["LION","TIGER","ELEPHANT","Horse","DOg","Monkey","Donkey","Fox","Zeebra"], // Animals
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath) as! SectionCell
    
    cell.lblStates!.text = items [indexPath.section][indexPath.row]
    return cell
}

func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    view.tintColor = UIColor.yellow
    

  

}
}
