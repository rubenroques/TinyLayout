//
//  TinyLayout.swift
//  Contra
//
//  Created by Ruben Roques on 01/02/15.
//  Copyright (c) 2015 RRocks. All rights reserved.
//

import Foundation
import UIKit


infix operator |=| { associativity right precedence 90 }
public func |=| (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) {
    (right.view, right.attri) |=| (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func |=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) {
    (right.view, right.attri) |=| (left.view, left.attri, 1,0)
}

public func |=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) {
    (right.view, right.attri) |=| (left.view, left.attri, 1,left.constant)
}

public func |=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) {

    if right.view.superview == nil {
        return
    }

    right.view.setTranslatesAutoresizingMaskIntoConstraints(false)

    right.view.superview!.addConstraint(NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .Equal, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant))
}


infix operator |=|& { associativity left }
public func |=|& (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) -> NSLayoutConstraint {
    return (right.view, right.attri) |=|& (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func |=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) -> NSLayoutConstraint {
    return (right.view, right.attri) |=|& (left.view, left.attri, 1,0)
}

public func |=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) -> NSLayoutConstraint {
    return (right.view, right.attri) |=|& (left.view, left.attri, 1,left.constant)
}
public func |=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) -> NSLayoutConstraint {

    right.view.setTranslatesAutoresizingMaskIntoConstraints(false)

    return NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .Equal, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant)
}







infix operator >=| { associativity left }
public func >=| (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) {
    (right.view, right.attri) >=| (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func >=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) {
    (right.view, right.attri) >=| (left.view, left.attri, 1,0)
}

public func >=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) {
    (right.view, right.attri) >=| (left.view, left.attri, 1,left.constant)
}

public func >=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) {

    if right.view.superview == nil {
        return
    }

    right.view.superview!.addConstraint(NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .GreaterThanOrEqual, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant))
}

infix operator >=|& { associativity left }
public func >=|& (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) -> NSLayoutConstraint {
    return (right.view, right.attri) >=|& (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func >=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) -> NSLayoutConstraint {
    return (right.view, right.attri) >=|& (left.view, left.attri, 1,0)
}

public func >=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) -> NSLayoutConstraint {
    return (right.view, right.attri) >=|& (left.view, left.attri, 1,left.constant)
}
public func >=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) -> NSLayoutConstraint {

    right.view.setTranslatesAutoresizingMaskIntoConstraints(false)

    return NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .GreaterThanOrEqual, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant)
}







infix operator <=| { associativity left }
public func <=| (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) {
    (right.view, right.attri) <=| (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func <=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) {
    (right.view, right.attri) <=| (left.view, left.attri, 1,0)
}

public func <=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) {
    (right.view, right.attri) <=| (left.view, left.attri, 1,left.constant)
}

public func <=| (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) {

    if right.view.superview == nil {
        return
    }

    right.view.superview!.addConstraint(NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .LessThanOrEqual, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant))
}

infix operator <=|& { associativity left }
public func <=|& (right:(view:UIView, attri:NSLayoutAttribute), constant: CGFloat) -> NSLayoutConstraint {
    return (right.view, right.attri) <=|& (nil, NSLayoutAttribute.NotAnAttribute, 1,constant)
}

public func <=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute)) -> NSLayoutConstraint {
    return (right.view, right.attri) <=|& (left.view, left.attri, 1,0)
}

public func <=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, constant: CGFloat)) -> NSLayoutConstraint {
    return (right.view, right.attri) <=|& (left.view, left.attri, 1,left.constant)
}
public func <=|& (right:(view:UIView, attri:NSLayoutAttribute), left:(view:UIView?, attri:NSLayoutAttribute, multiplier: CGFloat, constant:CGFloat)) -> NSLayoutConstraint {

    right.view.setTranslatesAutoresizingMaskIntoConstraints(false)

    return NSLayoutConstraint(item: right.view, attribute: right.attri, relatedBy: .LessThanOrEqual, toItem: left.view, attribute: left.attri, multiplier: left.multiplier, constant: left.constant)
}




