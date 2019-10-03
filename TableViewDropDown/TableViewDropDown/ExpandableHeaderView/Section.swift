//
//  Section.swift
//  TableViewDropDown
//
//  Created by Training on 30/09/19.
//  Copyright © 2019 Training. All rights reserved.
//

import Foundation
struct section {
    var genre: String!
    var foods: [String]!
    var expanded: Bool!
    
    init (genre: String,foods: [String],exapnded: Bool) {
    self.genre = genre
        self.foods = foods
       self.expanded = exapnded

    }
    
    
}
