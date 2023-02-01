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
