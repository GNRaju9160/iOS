//
//  ViewController.swift
//  PageController
//
//  Created by Training on 19/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var scrView: UIScrollView!
    @IBOutlet weak var pageController: UIPageControl!
    var images: [String] = ["apple","earth","umbrilla","army","flag","view","horse","tiger","lightumb"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageController.numberOfPages = images.count
        for index in 0..<images.count {
        frame.origin.x = scrView.frame.size.width * CGFloat (index)
        frame.size = scrView.frame.size
        let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrView.addSubview(imgView)
    
    }
        scrView.contentSize = CGSize(width: (scrView.frame.size.width * CGFloat (images.count )), height: scrView.frame.size.height)
            scrView.delegate = self
   
}
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pagenumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageController.currentPage = Int(pagenumber)
    }
    
}
