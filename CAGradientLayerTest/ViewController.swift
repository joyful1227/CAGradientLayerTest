//
//  ViewController.swift
//  CAGradientLayerTest
//
//  Created by Joy on 2019/6/26.
//  Copyright © 2019 Joy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //建立CAGradientLayer 漸層物件
        let gradientLayer = CAGradientLayer()
        
        
        gradientLayer.colors = [UIColor.yellow.cgColor,UIColor.orange.cgColor,UIColor.brown.cgColor]
        //gradientLayer.colors = [UIColor.yellow.cgColor,UIColor.orange.cgColor]
        
        //設置每個顏色漸變的點0.0~1.0
        gradientLayer.locations = [0, 0.3, 0.6]
        //gradientLayer.locations = [0,0.5]
       
        //漸層起始和結束位置
        gradientLayer.startPoint = CGPoint(x:0, y:0)
        gradientLayer.endPoint = CGPoint(x:1, y:1)
        
        gradientLayer.frame = myView.bounds
        
        
        myView.layer.addSublayer(gradientLayer)
    }


}

