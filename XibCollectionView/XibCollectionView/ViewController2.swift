
import UIKit

class ViewController2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
   
    
   
    @IBOutlet weak var clcVw2: UICollectionView!
    let arrBabies = ["Baby 1","Baby 2","Baby 3","Baby 4","Baby 5","Baby 6","Baby 7","Baby 8","Baby 9","Baby 10"]
     let arrBimag = [(#imageLiteral(resourceName: "b2")),(#imageLiteral(resourceName: "b11")),(#imageLiteral(resourceName: "b10")),(#imageLiteral(resourceName: "b9")),(#imageLiteral(resourceName: "b1")),(#imageLiteral(resourceName: "b5")),(#imageLiteral(resourceName: "b6")),(#imageLiteral(resourceName: "b13")),(#imageLiteral(resourceName: "b3")),(#imageLiteral(resourceName: "b8")),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "CollectionViewCell", bundle: nil)
        self.clcVw2.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")


    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBabies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.lblCell.text = arrBabies[indexPath.item]
        cell.clcImg.image = arrBimag[indexPath.item]
        return cell
    }
    
    

}
