

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tblAnimals: UITableView!
    
    let arrNames = ["Baby 1","Baby 2","Baby 3","Baby 4","Baby 5","Baby 6","Baby 7","Baby 8","Baby 9","Baby 10"]
    let arrImages = [(#imageLiteral(resourceName: "b1")),(#imageLiteral(resourceName: "images-302")),(#imageLiteral(resourceName: "b2")),(#imageLiteral(resourceName: "b9")),(#imageLiteral(resourceName: "b5")),(#imageLiteral(resourceName: "b7")),(#imageLiteral(resourceName: "b3")),(#imageLiteral(resourceName: "b4")),(#imageLiteral(resourceName: "b6")),(#imageLiteral(resourceName: "images-301")),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "ImageTVC", bundle: nil)
        self.tblAnimals.register(nib, forCellReuseIdentifier: "ImageTVC")
        
        
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
