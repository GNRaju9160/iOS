//
//  ViewController.swift
//  AlertViewR
//
//  Created by Training on 19/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAlert1(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "UIAlertController", message: "This function is harmfull to your device", preferredStyle: UIAlertController.Style.alert)
        
        // add the actions (buttons)
        
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        // show the alert
        
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnAlert2(_ sender: Any) {
        
        let alert = UIAlertController(title: "Notice", message: "Lauching this missile will destroy the entire universe. Is this what you intended to do?", preferredStyle: UIAlertController.Style.alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Remind Me Tomorrow", style: UIAlertAction.Style.default, handler: nil))
        self.lblText.text = "Remind Me Tomorrow"
        
        alert.addAction(UIAlertAction(title: "Launch the Missile", style: UIAlertAction.Style.destructive, handler: nil))
        self.lblText.text = "Launch the Missile"
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnAlert3(_ sender: Any) {
        
        let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnAlert4(_ sender: Any) {
        
        let actionSheetController = UIAlertController(title: "Choose Your Place", message: nil , preferredStyle: .actionSheet)

        let firstAction: UIAlertAction = UIAlertAction(title: "Himalayas", style: .default) { action -> Void in
            self.lblText.text = "Himalayas"
}
        let secondAction: UIAlertAction = UIAlertAction(title: "Kanyakumari", style: .default) { action -> Void in
            self.lblText.text = "Kanyakumari"
}
        let thirdAction: UIAlertAction = UIAlertAction(title: "Goa", style: .default) { action -> Void in
            self.lblText.text = "Goa"
}
        let fourthAction: UIAlertAction = UIAlertAction(title: "Thripura", style: .default) { action -> Void in
            self.lblText.text = "Thripura"
}
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .default) { action -> Void in
            self.lblText.text = "Cancel"
}
        actionSheetController.addAction(firstAction)
        actionSheetController.addAction(secondAction)
        
        actionSheetController.addAction(thirdAction)
        
        actionSheetController.addAction(fourthAction)
        
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true, completion: nil)
        
        
        

}


}
