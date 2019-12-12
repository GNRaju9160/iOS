//
    

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblValue: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    @IBOutlet weak var btnSubstract: UIButton!
    @IBOutlet weak var btnShow: UIButton!
    
    var valueInCell = Int()
}
