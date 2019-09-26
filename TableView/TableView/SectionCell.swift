//
//  SectionCell.swift
//  TableView
//
//  Created by Training on 25/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class SectionCell: UITableViewCell {
    @IBOutlet weak var lblStates: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
