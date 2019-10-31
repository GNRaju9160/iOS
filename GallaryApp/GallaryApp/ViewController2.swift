//
//  ViewController2.swift
//  GallaryApp
//
//  Created by Training on 22/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    //    let arrImages = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","]
    
    
    @IBOutlet weak var cltView: UICollectionView!
    
    let arrImages: [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        UIImage(named: "5")!,
        UIImage(named: "6")!,
        UIImage(named: "7")!,
        UIImage(named: "8")!,
        UIImage(named: "9")!,
        UIImage(named: "10")!,
        UIImage(named: "11")!,
        UIImage(named: "12")!,
        UIImage(named: "13")!,
        UIImage(named: "14")!,
        UIImage(named: "15")!,
        UIImage(named: "16")!,
        UIImage(named: "17")!,
        UIImage(named: "18")!,
        UIImage(named: "19")!,
        UIImage(named: "20")!,
        UIImage(named: "21")!,
        UIImage(named: "22")!,
        UIImage(named: "23")!,
        UIImage(named: "24")!,
        UIImage(named: "25")!,
        UIImage(named: "26")!,
        UIImage(named: "27")!,
        UIImage(named: "28")!,
        UIImage(named: "29")!,
        UIImage(named: "30")!,
        
        
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return arrImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imgCell.image = arrImages[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        nextVC.selectedImage = arrImages[indexPath.item]
       self.navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    
}
