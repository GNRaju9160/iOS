//
//  ExpandableHeaderView.swift
//  TableViewDropDown
//
//  Created by Training on 30/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit
protocol ExpandableHeaderViewdelegate {
    func toggleSection(header: ExpandableHeaderView, section: Int)
}


class ExpandableHeaderView: UITableViewHeaderFooterView {
    var delegate: ExpandableHeaderViewdelegate?
    var section: Int!
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector (selectHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    @objc func selectorHeaderAction(gestureRecognizer: UITapGestureRecognizer) {
    @objc func selectHeaderAction(gestrecognizer: UIGestureRecognizer) {
        fatalError("init(coder: ) has not been implemented")
    }
    
        
        
        
    func custominit(title: String, section: Int, delegate: ExpandableHeaderViewdelegate) {
        self.textLabel?.text = title
        self.section = section
        self.delegate = delegate
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.contentView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
    }
        
        
    }


