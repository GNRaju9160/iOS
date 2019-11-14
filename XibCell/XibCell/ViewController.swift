
import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblVwDetails: UITableView!
    let arrNames = ["horse","lion","tiger","elephant","dog","kangaroo","wolf","Yax","cow","cat"]
    let arrImages = [(#imageLiteral(resourceName: "hr")),(#imageLiteral(resourceName: "lion")),(#imageLiteral(resourceName: "tiger")),(#imageLiteral(resourceName: "ele")),(#imageLiteral(resourceName: "dog")),(#imageLiteral(resourceName: "kangaroo")),(#imageLiteral(resourceName: "fox")),(#imageLiteral(resourceName: "yax")),(#imageLiteral(resourceName: "cow")),(#imageLiteral(resourceName: "cat")),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      let nib = UINib.init(nibName: "ImageTVC", bundle: nil)
        self.tblVwDetails.register(nib, forCellReuseIdentifier: "ImageTVC")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTVC", for: indexPath) as! ImageTVC
        cell.lblNames?.text = arrNames[indexPath.row]
        cell.imgVw?.image = arrImages[indexPath.row]
                return cell
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 210

}

}
