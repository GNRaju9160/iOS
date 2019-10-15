
import UIKit

class ViewController2: UIViewController {
 //   var myTimer: Timer?
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var lblView: UILabel!
    
  let progress = Progress(totalUnitCount: 10)
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func actionStart(_ sender: Any) {
        
        if self.progressView.progress >= 1 {
            self.progressView.progress = 0.0
//        }
//        else{
            // schedule tomer
         //   self.myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController2.updateProgress), userInfo: nil, repeats: true)
      // enable/disable button
     
        }
      
        // 1
        progressView.progress = 0.0
        progress.completedUnitCount = 0

        // 2
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                return
            }

            // 3
            self.progress.completedUnitCount += 1
            self.progressView.setProgress(Float(self.progress.fractionCompleted), animated: true)

            self.lblView.text = "\(Int(self.progress.fractionCompleted * 100)) %"
        }

    }
    @IBAction func actionStop(_ sender: Any) {
    
    }
  

}

