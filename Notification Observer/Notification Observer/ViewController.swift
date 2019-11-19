//
//  ViewController.swift
//  Notification Observer
//
//  Created by trainee on 06/02/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(controlNotification), name: Notification.Name("logIn"), object: nil)
    }
   @objc func controlNotification(_ notificationObj: Notification){
    let obj = notificationObj.userInfo
    lblName.text = obj!["firstName"] as? String
    lblAge.text = obj!["age"] as? String
   }
    @IBAction func btnNext(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        
       self.present(secondVC, animated: true, completion: nil)
    }
    


}

