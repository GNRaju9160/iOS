
import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    
    let urlStr = "https://jsonplaceholder.typicode.com/posts"
    var arrResult = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callAPI()
    }
    func callAPI() {
        let url = URL(string: urlStr)
        Alamofire.request(url!, method: .get, parameters: nil, headers: nil).responseJSON {(response) in
            if let responseObj = response.value as? [[String: Any]] {
                self.arrResult = self.parseJSON(userData: responseObj)
                self.tblView.reloadData()
                print(self.arrResult)
            }
        }
    }
    func parseJSON(userData: [[String: Any]]) -> [Users] {
        var userArr = [Users]()
        
        for obj in userData {
            do {
                var userObj = Users()
                userObj.detailUser(obj)
                userArr.append(userObj)
            }catch{
            }
        }
        return userArr
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.lblText?.text = "\(arrResult[indexPath.row].id)"
        cell.lblDetails?.text = arrResult[indexPath.row].userId
        cell.lblTitle?.text = arrResult[indexPath.row].title
        cell.lblBody?.text = arrResult[indexPath.row].body
        return cell
    }
}
