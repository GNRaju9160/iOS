
import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mkMapView: MKMapView!
    
    var carryLocation = String()
    var carryLocationLatitude = String()
    var selectedAnnotation: MKPointAnnotation?
    let locations = [
        ["title": "Amritsar, AMR","latitude": 31.633641, "longitude": 74.874391],
        ["title": "Atmakur, ATR", "latitude": 15.875384, "longitude": 78.581210],
        ["title": "Kanya Kumari, KNK", "latitude": 8.335958, "longitude": 77.554936],
        ["title": "Hyderabad, HYD", "latitude": 17.373809, "longitude": 78.478300],
        ["title": "Gujarat, GJR", "latitude": 23.068637, "longitude": 71.335450],
        ["title": "New delhi, NDL", "latitude": 28.678143, "longitude": 77.190487],
        ["title": "Guwahati, GWT", "latitude": 26.147820,  "longitude": 91.726928],
        ["title": "Agartala, AGT", "latitude": 23.834995, "longitude": 91.595614]
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mkMapView.delegate = self
        createAnnotations(locations: locations)
    }
    
    
    func createAnnotations(locations:[[String: Any]]){
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            mkMapView.addAnnotation(annotation)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let nextVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
        nextVc.selectedTitle = (view.annotation?.title)! ?? "d"
        nextVc.selectedLati = "\(view.annotation?.coordinate.latitude ?? 0)"
        nextVc.selectedLang = "\(view.annotation?.coordinate.longitude ?? 0)"
        self.navigationController?.pushViewController(nextVc, animated: true)
        
        
        //    print("name: \(view.annotation?.title ?? "No annotation")")
        
    }
}
