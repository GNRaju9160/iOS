

import UIKit

extension UIViewController {
    func pushTo(VC: String) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: VC)
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }

    func popToBack() {
        self.navigationController?.popViewController(animated: true)
    }

    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }

    func root(_ identifier: String) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: identifier)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = redViewController
    }

    func endEditing() {
        view.endEditing(true)
    }
}



extension UIView {


    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                   shadowOffset: CGSize = CGSize(width: 0.2, height: 0.2),
                   shadowOpacity: Float = 0.8,
                   shadowRadius: CGFloat = 4) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }

    func dropshaow() {
        layer.shadowOpacity = 1.0
    }

    func rounded() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }

    func addGradiantColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1).cgColor,#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1).cgColor,#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1).cgColor]
        gradientLayer.cornerRadius = self.layer.cornerRadius
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        //Use diffrent colors
        layer.insertSublayer(gradientLayer, at: 0)
    }

    func addgradientAnimation(_ colors:[CGColor] = [#colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1).cgColor, #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).cgColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors
        gradientLayer.cornerRadius = self.layer.cornerRadius
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        //Use diffrent colors

        let animation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = colors
        animation.toValue = [ #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1).cgColor,#colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1).cgColor]
        animation.duration = 4.0
        animation.autoreverses = true
        animation.repeatCount = Float.infinity

        // add the animation to the gradient
        gradientLayer.add(animation, forKey: nil)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

@IBDesignable class RoundedButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()

        updateCornerRadius()
    }

    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }

    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}


@IBDesignable class RoundedView: UIView
{
    override func layoutSubviews() {
        super.layoutSubviews()

        updateCornerRadius()
    }

    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }

    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}

@IBDesignable class RoundedImageView: UIImageView
{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

extension Date {

    func interval(ofComponent comp: Calendar.Component, fromDate date: Date) -> Int {

        let currentCalendar = Calendar.current

        guard let start = currentCalendar.ordinality(of: comp, in: .era, for: date) else { return 0 }
        guard let end = currentCalendar.ordinality(of: comp, in: .era, for: self) else { return 0 }

        return end - start
    }
}

func getDate(str:String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy  hh:mm a"
    dateFormatter.timeZone = TimeZone.current
    dateFormatter.locale = Locale.current
    return dateFormatter.date(from: str) // replace Date String
}

func ConvertImageToBase64String (img: UIImage) -> String {
    return img.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
}

func ConvertBase64StringToImage (imageBase64String:String) -> UIImage {
    let imageData = Data.init(base64Encoded: imageBase64String, options: .init(rawValue: 0))
    let image = UIImage(data: imageData!)
    return image!
}

func toastMessage(_ message: String, _ color: UIColor = .white){
    guard let window = UIApplication.shared.keyWindow else {return}
    let messageLbl = UILabel()
    messageLbl.text = message
    messageLbl.textAlignment = .center
    messageLbl.font = UIFont.systemFont(ofSize: 12)
    messageLbl.textColor = color
    messageLbl.backgroundColor = UIColor(white: 0, alpha: 0.5)

    let textSize:CGSize = messageLbl.intrinsicContentSize
    let labelWidth = min(textSize.width, window.frame.width - 40)

    messageLbl.frame = CGRect(x: 20, y: window.frame.height - 90, width: labelWidth + 30, height: textSize.height + 20)
    messageLbl.center.x = window.center.x
    messageLbl.layer.cornerRadius = messageLbl.frame.height/2
    messageLbl.layer.masksToBounds = true
    window.addSubview(messageLbl)

    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {

        UIView.animate(withDuration: 2, animations: {
            messageLbl.alpha = 0
        }) { (_) in
            messageLbl.removeFromSuperview()
        }
    }
}

extension UITextField {
    func goToNextTextField(_ txtFld: UITextField) {
        self.resignFirstResponder()
        txtFld.becomeFirstResponder()
    }
}

// An attributed string extension to achieve colors on text.
extension NSMutableAttributedString {
    func setColor(color: UIColor, forText stringValue: String) {
        let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
    }
}

//func isValidEmail(emailStr:String) -> Bool {
//    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//    if !emailPred.evaluate(with: emailStr) {
//        toastMessage(Alerts.validEmail)
//    }
//    return emailPred.evaluate(with: emailStr)
//}

extension UINavigationController {
    func backToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
}

extension UILabel {
    func drawGradientColor(colors: [CGColor]) -> UIColor? {
        let currentContext = UIGraphicsGetCurrentContext()
        currentContext?.saveGState()
        defer { currentContext?.restoreGState() }

        let size = frame.size
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(),
                                        colors: colors as CFArray,
                                        locations: nil) else { return nil }

        let context = UIGraphicsGetCurrentContext()
        context?.drawLinearGradient(gradient,
                                    start: CGPoint.zero,
                                    end: CGPoint(x: size.width, y: 0),
                                    options: [])
        let gradientImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let image = gradientImage else { return nil }
        return UIColor(patternImage: image)
    }
}

extension UITableView {
    func animateTable() {
        reloadData()

        let cells = visibleCells
        let tableHeight: CGFloat = bounds.size.height

        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }

        var index = 0

        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8,initialSpringVelocity: 0, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)

            index += 1
        }
    }
}

func getHueColor(_ color1 : Float, _ color2: Float) -> UIColor {
    return UIColor(hue: CGFloat(color1/color2), saturation: 1, brightness: 1, alpha: 0.6)
}

extension CALayer {

    func addBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
        let border = CALayer()
        switch edge {
        case .top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: thickness)
        case .bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - thickness, width: self.frame.width, height: thickness)
        case .left:
            border.frame = CGRect(x: 0, y: 0, width: thickness, height: self.frame.height)
        case .right:
            border.frame = CGRect(x: self.frame.width - thickness, y: 0, width: thickness, height: self.frame.height)
        default:
            break
        }
        border.backgroundColor = color.cgColor
        addSublayer(border)
    }
}
