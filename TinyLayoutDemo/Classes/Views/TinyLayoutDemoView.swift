//
//  ContraSize.swift
//  Contra
//
//  Created by Ruben Roques on 31/01/15.
//  Copyright (c) 2015 RRocks. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class TinyLayoutDemoView:UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupDemoViews()
    }

    override func prepareForInterfaceBuilder() {
        setupDemoViews()
    }
    func setupDemoViews(){

        self.backgroundColor = UIColor.lightGrayColor()
        self.setTranslatesAutoresizingMaskIntoConstraints(false)


        var topImageView = UIImageView()
        topImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        topImageView.backgroundColor = UIColor.greenColor()

        var labelA = UILabel()
        labelA.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelA.backgroundColor = UIColor.grayColor()
        labelA.text = "Label A"
        labelA.tl_height(20)


        var labelB = UILabel()
        labelB.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelB.backgroundColor = UIColor.grayColor()
        labelB.text = "Label B its a big label but cannot"
        labelB.tl_height(20)



        var labelC = UILabel()
        labelC.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelC.backgroundColor = UIColor.grayColor()
        labelC.text = "Label C"
        labelC.tl_size(CGSize(width: 100, height: 20))



        var labelD = UILabel()
        labelD.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelD.backgroundColor = UIColor.grayColor()
        labelD.text = "Label D"
        labelD.tl_size(CGSize(width: 100, height: 20))


        self.addSubview(topImageView)
        self.addSubview(labelA)
        self.addSubview(labelB)
        self.addSubview(labelC)
        self.addSubview(labelD)






        (labelA, .Left)|=|(self, .Left, 110)

        (labelB, .CenterX)|=|(labelA, .CenterX, 0)



        (labelA, .Top)|=|(self, .Top, 1, 50)
        (labelB, .Top)|=|(labelA, .Bottom, 10)
        (labelC, .Top)|=|(labelB, .Bottom, 20)
        (labelD, .Top)|=|(labelC, .Bottom)

        (labelA, .Width)|=|210

        (labelB, .Width)<=|(labelA, .Width)

        self.addConstraint((labelD, .Left)|=|&(labelA, .Left,1,10))
        var constr = (labelD, .Left)|=|&(labelA, .Left,1,10)

        self.layoutIfNeeded()
    }

    
}


