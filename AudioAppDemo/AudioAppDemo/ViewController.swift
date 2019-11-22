
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var songPlayer = AVAudioPlayer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareSongAndSession()
        
    }
    func prepareSongAndSession() {
        do{
            songPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource:"Titanic", ofType: "mp3")!))
            songPlayer.prepareToPlay()
            let audioSession = AVAudioSession.sharedInstance()
            do{
                try audioSession.setCategory(AVAudioSession.Category.playback)
            } catch let sessionError {
                print (sessionError)
                
            }
            
        }catch {
            print("songPlayerError")
        }
   
    
    }
    @IBAction func btnPLay(_ sender: UIButton) {
    songPlayer.play()
       
    }
    @IBAction func btnPause(_ sender: Any) {
    songPlayer.pause()
    }
    
    @IBAction func restartSong(_ sender: Any) {
        if songPlayer.isPlaying {
            songPlayer.stop()
            songPlayer.currentTime = 0
            songPlayer.play()
        }else{
            songPlayer.play()
        }
    }
    
}
