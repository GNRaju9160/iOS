

import Foundation

class Users: NSObject{
    
    var userId = String()
    var id = Int()
    var title = String()
    var body = String()
    
    func detailUser(_  data: [String:Any])  {
        userId  = data["user"] as? String ?? "No Data"
        id  = data["id"] as? Int ?? 0
        title = data["title"] as? String ?? "No title"
        body  = data["body"] as? String ?? "No Body"
      }
}
