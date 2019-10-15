//
//  ViewController.swift
//  WebView1
//
//  Created by Training on 15/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
   
    var webview: WKWebView!
    override func loadView() {
        
        webview = WKWebView()
//        webview.navigationDelegate = self
        view = webview
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.co.in")!
        webview.load(URLRequest(url: url))
//        webview.allowsBackForwardNavigationGestures = true
        
//        webview.load(NSURLRequest(url: NSURL(fileURLWithPath: Bundle.main.path(forResource: "Htmlcode", ofType: "html")!) as URL) as URLRequest)
        
        
        // Do any additional setup after loading the view.
  
    
    }


}

