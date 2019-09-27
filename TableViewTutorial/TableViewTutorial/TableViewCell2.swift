//
//  TableViewCell2.swift
//  TableViewTutorial
//
//  Created by Training on 24/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var imgAnimals: UIImageView!
    @IBOutlet weak var lblAnimals: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
