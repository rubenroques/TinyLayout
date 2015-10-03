//
//  UIViewTinyLayout.swift
//  TinyLayoutDemo
//
//  Created by Ruben Roques on 01/02/15.
//  Copyright (c) 2015 RRocks. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func tl_constraints(withAttribute attribute:NSLayoutAttribute) -> [NSLayoutConstraint] {
        var constraintsArray : [NSLayoutConstraint] = []
        for constraint in self.constraints {
            if constraint.firstAttribute == attribute {
                constraintsArray.append(constraint)
            }
        }
        return constraintsArray
    }

    func tl_constraints(withAttributes attributes:[NSLayoutAttribute]) -> [NSLayoutConstraint] {
        var constraintsArray : [NSLayoutConstraint] = []
        for attribute in attributes {
            constraintsArray += self.tl_constraints(withAttribute: attribute)
        }
        return constraintsArray
    }

    func tl_setWidth(width: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: width))
    }

    func tl_setHeight(height: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: height))
    }

    func tl_setSize(size: CGSize) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: size.width))
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: size.height))
    }
}