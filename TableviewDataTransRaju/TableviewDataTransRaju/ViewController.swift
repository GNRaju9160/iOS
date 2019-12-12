
    

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //MARK:- Outlets
    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var lblShow: UILabel!
    
    //MARK:- Variables
    var arrValues = [Int]()
    
    //MARK:- View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        putValuesInArray(100)
    }
    
    //MARK:- IBActions
    @IBAction func btnAdd(_ sender: UIButton) {
        arrValues[sender.tag] += 1
        tblVw.reloadData()
    }
    
    @IBAction func btnMinus(_ sender: UIButton) {
        if arrValues[sender.tag] != 0 {
        arrValues[sender.tag] -= 1
        tblVw.reloadData()
        }
    }
    
    @IBAction func btnShowTop(_ sender: UIButton) {
        lblShow.text = "\(arrValues[sender.tag])"
    }
    
    func putValuesInArray(_ count:Int) {
        for _ in 0..<count {
            arrValues.append(0)
        }
        tblVw.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.btnAdd.tag = indexPath.row
        cell.btnShow.tag = indexPath.row
        cell.btnSubstract.tag = indexPath.row
        if arrValues.count > 0 {
            cell.lblValue.text = "\(arrValues[indexPath.row])"
        }
        return cell
    }
}
