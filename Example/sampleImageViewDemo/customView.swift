//
//  imageView.swift
//  Pods
//
//  Created by Krify on 01/02/23.
//

import Foundation
import UIKit

class customView: UIView {
    
    @IBOutlet var sampleImageView: UIImageView!
    
    class func loadFromNib() -> customView {
        let nib = UINib(nibName: "customView", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as! customView
    }
    
    static func fromNib() -> customView {
        return Bundle.main.loadNibNamed("customView", owner: nil, options: nil)?.first as! customView
    }
}

extension UIImageView{
    public func setUIComp(cornerRadius:Int? = 10, image: UIImage? = UIImage(named: "dp"), borderwidth: CGFloat? = 1.0, borderColor: CGColor? =  UIColor.green.cgColor, shadowOffset: CGSize? = CGSize(width: 5, height: 5), shadowOpacity: Int? = 5){
        self.image = image
        self.contentMode = .scaleToFill
        self.clipsToBounds = true
        self.layer.cornerRadius = CGFloat(cornerRadius!)
        self.layer.borderWidth = CGFloat(borderwidth!)
        self.layer.borderColor = borderColor
        self.layer.shadowOffset = shadowOffset!
        self.layer.shadowOpacity = Float(shadowOpacity!)
    }
}
//
//import Foundation
//import UIKit
//
//public class customView: UIView {
//    
//    fileprivate weak var _imageView: UIImageView?
//    
//    @objc
//    open var sampleImageView1: UIImageView? {
//        if let _ = _imageView {
//            return _imageView
//        }
//        let view = UIView(frame: .zero)
//        view.isUserInteractionEnabled = false
//        view.backgroundColor = UIColor.white.withAlphaComponent(1)
//        view.layer.cornerRadius = 8
//        let imageView = UIImageView(frame: self.frame)
//        self.addSubview(imageView)
//        _imageView = imageView
//        return imageView
//    }
//    
//    static func fromNib() -> customView {
//        return Bundle.main.loadNibNamed("customView", owner: nil, options: nil)?.first as! customView
//    }
//}
//
//extension UIImageView{
//    public func setUIComp(cornerRadius:Int, image: UIImage, borderwidth: Int, borderColor: CGColor, shadowOffset: CGSize, shadowOpacity: Int){
//        self.image = image
//        self.contentMode = .scaleToFill
//        self.clipsToBounds = true
//        self.layer.cornerRadius = CGFloat(cornerRadius)
//        self.layer.borderWidth = CGFloat(borderwidth)
//        self.layer.borderColor = borderColor
//        self.layer.shadowOffset = shadowOffset
//        self.layer.shadowOpacity = Float(shadowOpacity)
//        
//    }
//}
