//
//  UIView+Tiny.swift
//  TinyLayoutDemo
//
//  Created by Ruben Roques on 01/02/15.
//  Copyright (c) 2015 RRocks. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func tl_constraints(fixedOnAttribute attribute:NSLayoutAttribute, highPriorityOnly:Bool = false) -> [NSLayoutConstraint] {

        var constraintsArray : [NSLayoutConstraint] = []

        for constraint in self.constraints()  {
            if let constraintValue = constraint as? NSLayoutConstraint {
                if constraintValue.firstAttribute == attribute {
                    constraintsArray.append(constraintValue)
                }
            }
        }

        /*
        if highPriorityOnly
        {
        var constraintsArraySorted : [NSLayoutConstraint] = constraintsArray.sort{ $0.priority < $1.priority}
        return
        }
        */

        return constraintsArray
    }

    func tl_constraints(fixedOnAttributes attributes:[NSLayoutAttribute]) -> [NSLayoutConstraint] {

        var constraintsArray : [NSLayoutConstraint] = []

        for attribute in attributes {
            constraintsArray += self.tl_constraints(fixedOnAttribute: attribute)
        }

        return constraintsArray
    }

    func tl_width(width: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: width))
    }

    func tl_height(height: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: height))
    }

    func tl_size(size: CGSize) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: size.width))
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: size.height))
    }
}