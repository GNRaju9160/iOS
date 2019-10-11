
import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    // let arrSections = ["Fruits","Vegetabls","Animals"]
    
    @IBOutlet weak var clcVw: UICollectionView!
    
    var  arrFruit = ["f1","f2","f3","f4","f5","f6","f7","f8","f9","f10"]
    var arrVegetable = ["v1","v2","v3","v4","v5","v6","v7","v8","v9","v10"]
    var arrAnimal = ["a1","a2","a3","a4","a5","a6","a7","a8","a9","a10"]
    //
    
    var arrCombind = [Array<String>]()
    var arrSections = ["Fruits","Vegetables","Animals"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrCombind = [arrFruit,arrVegetable,arrAnimal]
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrSections.count
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        var reusable : UICollectionReusableView? = nil
        
        if kind == UICollectionView.elementKindSectionHeader {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "CellReuse", for: indexPath) as! CellReuse
            view.lblText.text = arrSections[indexPath.section]
            reusable = view
        
        
        }
        return reusable!
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCombind[section].count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCVC", for: indexPath) as! CellCVC
        if indexPath.section == 0 {
            cell.imgVw.image = UIImage(named: arrFruit[indexPath.row])
        } else if indexPath.section == 1 {
            cell.imgVw.image = UIImage(named: arrVegetable[indexPath.row])
        } else {
            cell.imgVw.image = UIImage(named: arrAnimal[indexPath.row])
        }
        
        return cell
    }
    
}
