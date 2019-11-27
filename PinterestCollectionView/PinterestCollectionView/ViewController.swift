  import UIKit
  import PinterestLayout
  
  class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var clcVwPinterest: UICollectionView!
    var arrImages = [(#imageLiteral(resourceName: "1")),(#imageLiteral(resourceName: "8")),(#imageLiteral(resourceName: "6")),(#imageLiteral(resourceName: "12")),(#imageLiteral(resourceName: "10")),(#imageLiteral(resourceName: "3")),(#imageLiteral(resourceName: "11")),(#imageLiteral(resourceName: "2")),(#imageLiteral(resourceName: "8")),(#imageLiteral(resourceName: "7"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = PinterestLayout()
        clcVwPinterest.collectionViewLayout = layout
        layout.delegate = self
        layout.cellPadding = 5
        layout.numberOfColumns = 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CvcPL", for: indexPath) as! CvcPL
        cell.imgVw.image = arrImages[indexPath.item]
        return cell
    }
        
  }
  
  extension ViewController: PinterestLayoutDelegate {
    
    func collectionView(collectionView: UICollectionView,
                        heightForImageAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        let image = arrImages[indexPath.item]
        
        return image.height(forWidth: withWidth)
    }
    
    func collectionView(collectionView: UICollectionView,
                        heightForAnnotationAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        let textFont = UIFont(name: "Arial-ItalicMT", size: 11)!
        return "Some text".heightForWidth(width: withWidth, font: textFont)
    }
  }
