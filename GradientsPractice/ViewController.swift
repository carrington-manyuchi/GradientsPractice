//
//  ViewController.swift
//  GradientsPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/11.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var gradientLayer: CAGradientLayer = {
        return CAGradientLayer()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientLayer()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }

    private func setupGradientLayer() {
        gradientLayer.colors = [
            UIColor.red.cgColor,
            UIColor.green.cgColor,
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        view.layer.addSublayer(gradientLayer)
    }
}

