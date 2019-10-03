//
//  ViewController1.swift
//  CollectionViewDataTrans
//
//  Created by Training on 03/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let arrTours = ["Belumcaves","Dehradun","Haridwar","Humpi","Hyderabad","Kerala","Kulumanali","Mrudureswara temple","Nepal","Puducherry","Rishikesh","Seemandra","Srilanka","Srinagar","Statchu of Unity","Thirupathi","Vizag"]
    
    let arrToursImages: [UIImage] = [
        UIImage(named: "Belumcaves")!,
        UIImage(named: "Dehradun")!,
        UIImage(named: "Haridwar")!,
        UIImage(named: "Humpi")!,
        UIImage(named: "Hyderabad")!,
        UIImage(named: "Kerala")!,
        UIImage(named: "Kulumanali")!,
        UIImage(named: "Mrudureswara temple")!,
        UIImage(named: "Nepal")!,
        UIImage(named: "Puducherry")!,
        UIImage(named: "Rishikesh")!,
        UIImage(named: "Seemandra")!,
        UIImage(named: "Srilanka")!,
        UIImage(named: "Srinagar")!,
        UIImage(named: "Statchu of Unity")!,
        UIImage(named: "Thirupathi")!,
        UIImage(named: "Vizag")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTours.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.lblText.text = arrTours[indexPath.item]
        cell.imgVw.image = arrToursImages[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        nextVC.selectedImage = arrToursImages[indexPath.item]
        nextVC.selectedTourName = arrTours[indexPath.item]
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
}
