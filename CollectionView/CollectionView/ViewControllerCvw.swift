//
//  ViewController2.swift
//  CollectionView
//
//  Created by Training on 01/10/19.
//  Copyright © 2019 Training. All rights reserved.
//

import UIKit

class ViewControllerCvw: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let arrFoods = ["Idly Sambar","Vada","Ragi Dosa","Utappam","pulihora","Full Meals","Gutti Vankai","Fish Fry","Egg Curry","Egg Biriyani","Chicken Biriyani"]
    let arrFoodImages: [UIImage] = [
        UIImage(named: "Idly Sambar")!,
        UIImage(named: "Vada")!,
        UIImage(named: "Ragi Dosa")!,
        UIImage(named: "Utappam")!,
        UIImage(named: "pulihora")!,
        UIImage(named: "Full Meals")!,
        UIImage(named: "Gutti Vankai")!,
        UIImage(named: "Fish Fry")!,
        UIImage(named: "Egg Curry")!,
        UIImage(named: "Egg Biriyani")!,
        UIImage(named: "Chicken Biriyani")!,
       ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
        
        //    CollectionView.dataSource = self
        //    CollectionView.delegate = self
        //
        //    var layout = self.collectionView.CollectionViewlayout as! UICollectionViewFlowLayout
        //    layout.sectionInset = UIEdge
        
        
        
        
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrFoods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as! CollectionViewCell2
        cell.lblText.text = arrFoods[indexPath.item]
        cell.imgFood.image = arrFoodImages[indexPath.item]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerCv3") as! ViewControllerCv3
    
    nextVC.selectedImage = arrFoodImages[indexPath.item]
    nextVC.selectedFoodName = arrFoods[indexPath.item]
    self.navigationController?.pushViewController(nextVC, animated: true)
}
}
