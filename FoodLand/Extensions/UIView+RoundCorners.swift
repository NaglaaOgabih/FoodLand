//
//  UIView+RoundCorners.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 27/03/2022.
//

import UIKit

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
       let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
       layer.mask = mask
    }
    func dropShadow(view: UIView, shadowOpacity: Float = 0.2, shadowColor: CGColor = UIColor.gray.cgColor, shadowRadius: CGFloat = 5){
        view.layer.shadowColor = shadowColor
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = shadowRadius
    }
}
//extension UIView {
//    func dropShadow(scale: Bool = true) {
//        layer.masksToBounds = false
//        layer.shadowColor = UIColor.red.cgColor
//        layer.shadowOpacity = 0.5
//        layer.shadowRadius = 4
//
//    }
//}
