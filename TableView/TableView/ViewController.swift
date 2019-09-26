import UIKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  let section: [String] = ["Row1","Row2","Row3"]
    //var items = [["Apple","Banana"],["Dog","Lion"],["Red","Yellow"]]
    
    @IBOutlet weak var tblVwData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let headerView = UIView()
        headerView.backgroundColor = .blue
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        
        
        
        let footerView = UIView()
        footerView.backgroundColor = .blue
        footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return [section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tblVwData.dequeueReusableCell(withIdentifier: "SectionsTVC", for: indexPath) as! SectionsTVC
      
        cell.textLabel?.text = section[indexPath.row]
            return cell
        
    }
        }


