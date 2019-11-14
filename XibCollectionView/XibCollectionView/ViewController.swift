
import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var clcVwFrame: UICollectionView!
    
    let arrNames = ["horse","lion","tiger","elephant","dog","kangaroo","wolf","Yax","cow","cat"]
    let arrImages = [(#imageLiteral(resourceName: "hr")),(#imageLiteral(resourceName: "lion")),(#imageLiteral(resourceName: "tgr")),(#imageLiteral(resourceName: "elp")),(#imageLiteral(resourceName: "dog")),(#imageLiteral(resourceName: "kang")),(#imageLiteral(resourceName: "fox")),(#imageLiteral(resourceName: "yax")),(#imageLiteral(resourceName: "cow")),(#imageLiteral(resourceName: "cat")),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "CollectionViewCell", bundle: nil)
        self.clcVwFrame.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.lblCell.text = arrNames[indexPath.item]
         cell.clcImg.image = arrImages[indexPath.item]
        return cell
    }
    @IBAction func ActMove(_ sender: Any) {
        let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(nextVc, animated: true)
    }
}

