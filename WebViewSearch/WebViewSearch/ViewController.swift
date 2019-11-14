//
//  ViewController.swift
//  WebViewSearch
//
//  Created by Training on 07/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var actIndi: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        // 1
        let url = URL(string: "https://www.google.com")!
        webView.load(URLRequest(url: url))
        
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
      actIndi.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        actIndi.stopAnimating()
    }
    }
    
  



