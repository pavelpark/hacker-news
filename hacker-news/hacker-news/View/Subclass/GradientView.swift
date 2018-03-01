//
//  GradientView.swift
//  hacker-news
//
//  Created by Pavel Parkhomey on 2/28/18.
//  Copyright © 2018 Pavel Parkhomey. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 1, green: 0.659593867, blue: 0.3429904514, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 1, green: 0.364869294, blue: 0.03664082478, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
