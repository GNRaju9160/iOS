//
//  ViewController2.swift
//  PageController
//
//  Created by Training on 14/11/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrVw2: UIScrollView!
    @IBOutlet weak var pageCont2: UIPageControl!
    
    var images: [String] = ["1","2","3"]
     var frame = CGRect(x: 30, y: 40, width: 0, height: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageCont2.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrVw2.frame.size.width * CGFloat (index)
            frame.size = scrVw2.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrVw2.addSubview(imgView)
            
        }
        scrVw2.contentSize = CGSize(width: (scrVw2.frame.size.width * CGFloat (images.count )), height: scrVw2.frame.size.height)
        scrVw2.delegate = self 
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pagenumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageCont2.currentPage = Int(pagenumber)
    }
    
}
