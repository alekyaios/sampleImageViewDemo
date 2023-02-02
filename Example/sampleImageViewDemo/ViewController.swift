//
//  ViewController.swift
//  sampleImageViewDemo
//
//  Created by alekyaios on 02/01/2023.
//  Copyright (c) 2023 alekyaios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sampleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var UI = customView()
        UI = (Bundle.main.loadNibNamed("customView", owner: self, options: nil)!.last as? customView)!
        UI.frame = CGRect(x:30, y:30, width: 250 , height:250)
        self.view.addSubview(UI)
        UI.sampleImageView.setUIComp(cornerRadius: 30, image: UIImage(named: "bird")!, borderwidth: 2, borderColor: UIColor.red.cgColor, shadowOffset: CGSize(width: 4, height: 5), shadowOpacity: 20)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

