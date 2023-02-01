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
    public func setUIComp(cornerRadius:Int, image: UIImage, borderwidth: Int, borderColor: CGColor, shadowOffset: CGSize, shadowOpacity: Int){
        self.image = image
        self.contentMode = .scaleToFill
        self.clipsToBounds = true
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.layer.borderWidth = CGFloat(borderwidth)
        self.layer.borderColor = borderColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = Float(shadowOpacity)
        
    }
}


//class customView: UIViewController{
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        sampleImageView.addProperties(imagee: UIImage(named: "dp")!, borderColor: UIColor.green.cgColor, cornerRadius: 10, borderWidth: 5, shadowColor: UIColor.black.cgColor)
//    }
//
//    //MARK: Initialization
//    init() {
//        super.init(nibName: "CustomAlert", bundle: Bundle(for: customView.self))
//        self.modalPresentationStyle = .overCurrentContext
//        self.modalTransitionStyle   = .crossDissolve
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    //MARK: Show alert
//    func show() {
//        if self.isBeingPresented{
//            return
//        }
//        if #available(iOS 13, *) {
//            UIApplication.shared.windows.first?.rootViewController?.present(self, animated: true, completion: nil)
//        } else {
//            UIApplication.shared.keyWindow?.rootViewController!.present(self, animated: true, completion: nil)
//        }
//    }
//
//}
//
//
//extension UIImageView {
//    public func addProperties(imagee: UIImage,borderColor: CGColor,cornerRadius: CGFloat,borderWidth: CGFloat,shadowColor: CGColor) {
//        let image = UIImageView()
//        image.image = imagee
//        image.layer.cornerRadius = cornerRadius
//        image.layer.borderWidth = borderWidth
//        image.layer.borderColor = borderColor
//        image.layer.shadowColor = shadowColor
//        image.layer.shadowRadius = 10
//        image.layer.shadowOpacity = 0.3
//        image.layer.shadowOffset = CGSize(width: 0, height: 10)
//    }
//}

