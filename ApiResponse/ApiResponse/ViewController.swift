
import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldPsw: UITextField!
    
    let urlStr = "https://jsonplaceholder.typicode.com/posts"
    var arrResult = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callAPI()
    }
    // post Data API
    @IBAction func btnSave(_ sender: Any) {
        
        let parameters = ["name": txtFldName.text!, "password": txtFldPsw.text!]
        //create the url with URL
        let url1 = URL(string: "https://jsonplaceholder.typicode.com/posts")! //change the url
        //create the session object
        let session = URLSession.shared
        //now create the URLRequest object using the url object
        var request = URLRequest(url: url1)
        request.httpMethod = "POST" //set http method as POST
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
        } catch let error {
            print(error.localizedDescription)
        }
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            guard error == nil else {
                return
            }
            guard let data = data else {
                return
            }
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
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
