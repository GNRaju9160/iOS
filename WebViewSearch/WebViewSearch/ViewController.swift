//
//  ViewController.swift
//  WebViewSearch
//
//  Created by Training on 15/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
       var webView: WKWebView!
    
//    @IBOutlet weak var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: "https://www.google.com")!
        webView.load(URLRequest(url: url))
        
//      let request = URLRequest(url: url))
        
       // webView.loadHTMLString("Hello World", baseURL: nil)
      
        
    }
    @IBAction func actionBack(_ sender: Any) {
        if webView.canGoBack {
        webView.goBack()
        }
    }
    @IBAction func actionForward(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
        
    }
    @IBAction func actionRefresh(_ sender: Any) {
        webView.reload()
        
    }
    @IBAction func actionStop(_ sender: Any) {
        webView.stopLoading()
    }
    

}

