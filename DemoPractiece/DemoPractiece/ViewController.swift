//
//  ViewController.swift
//  DemoPractiece
//
//  Created by Training on 04/12/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
    
    @IBOutlet weak var txtview: UITextView!
    
    
   
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         txtview.delegate = self
        // Do any additional setup after loading the view.
    }

    func textViewDidChange(_ textView: UITextView)
    {
        if txtview.contentSize.height >= 200.0
        {
            txtview.isScrollEnabled = true
        }
        else
        {
            let size = CGSize(width: view.frame.width, height: .infinity)
            let approxSize = textView.sizeThatFits(size)
            
            textView.constraints.forEach {(constraint) in
                
                if constraint.firstAttribute == .height{
                    constraint.constant = approxSize.height
                }
            }
            txtview.isScrollEnabled = false
     
        }
        
       
    }
    

}

