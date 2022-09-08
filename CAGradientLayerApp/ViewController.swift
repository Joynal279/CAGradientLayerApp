//
//  ViewController.swift
//  CAGradientLayerApp
//
//  Created by JOYNAL ABEDIN on 8/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.red.cgColor,
            UIColor.purple.cgColor,
            UIColor.cyan.cgColor
        ]
        //top-left corner/// startPoint = CGPoint(x: 0, y: 0), endPoint = CGPoint(x: 1, y: 1)
        //top-right corner/// startPoint = CGPoint(x: 1, y: 0), endPoint = CGPoint(x: 0, y: 1)
        //bottom-left corner/// startPoint = CGPoint(x: 0, y: 1), endPoint = CGPoint(x: 1, y: 0)
        //bottom-right corner/// startPoint = CGPoint(x: 1, y: 1), endPoint = CGPoint(x: 0, y: 0)
        
        gradient.locations = [0, 0.5, 1]
        gradient.startPoint = CGPoint(x: 1, y: 1)
        gradient.endPoint = CGPoint(x: 0, y: 0)
        return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
        
    }


}

