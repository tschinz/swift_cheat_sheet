//  Created by RANJEET ANAND on 20/08/15.
//  Copyright (c) 2015 RANJEET ANAND. All rights reserved.
//  Site: http://www.GrouchyGremlins.com
//  Blog: http://ranjeetanand.wordpress.com


/*
* Copyright (c) 2015 Ranjeet Anand.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the
*    documentation and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
* PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
* BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
*/
// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//===== CREATE VIEW =====(display it using XCPShowView method)
var view = UIView(frame: CGRectMake(0, 0, 800, 600))
view.backgroundColor = UIColor(red: 200/255.0, green: 200/255.0, blue: 250/255.0, alpha: 1.0)
XCPShowView("MyView", view)

//===== CREATE BOX LAYER  =====(this will act as container layer and it will be a sublayer of view.layer )
var boxLyr = CALayer()
//boxLyr.bounds = CGRectMake(0, 0, 500, 500)
boxLyr.position = CGPointMake(800/2, 600/2)
boxLyr.backgroundColor = UIColor(red: 255/255.0, green: 247/255.0, blue: 235/255.0, alpha: 1.0).CGColor
//boxLyr.borderWidth = 15.0
boxLyr.borderColor = UIColor(red: 255/255.0, green: 80/255.0, blue: 155/255.0, alpha: 1.0).CGColor
view.layer.addSublayer(boxLyr)

//===== CREATE HEART LAYER ===== (as sublayer of boxLyr)
var heartLyr = CAShapeLayer()
heartLyr.bounds = CGRectMake(0, 0, 500, 500)
heartLyr.position = CGPointMake(boxLyr.frame.size.width/2, boxLyr.frame.size.height/2)
heartLyr.strokeColor = UIColor.redColor().CGColor
heartLyr.lineWidth = 1.0
heartLyr.fillColor = UIColor(white: 0.2, alpha: 0.2).CGColor
heartLyr.fillColor = UIColor(red: 213/255.0, green: 65/255.0, blue: 128/255.0, alpha: 1.0).CGColor
//---Add Shadow to heart---
heartLyr.shadowColor = UIColor.blackColor().CGColor
heartLyr.shadowRadius = 6.0
heartLyr.shadowOffset = CGSizeMake(3, 3)
heartLyr.shadowOpacity = 0.8

let heartW = heartLyr.frame.size.width
let heartH = heartLyr.frame.size.height

//---Create Path for drawing---
var path = UIBezierPath()
//Move to Drawing Point
path.moveToPoint(CGPointMake(heartW/2, 120))
//Upper-Right Curve
path.addQuadCurveToPoint(CGPointMake(heartW * 0.9, 150), controlPoint: CGPointMake(heartW * 0.8, 0))
//Lower-Right Curve
path.addQuadCurveToPoint(CGPointMake(heartW/2, heartH * 0.9), controlPoint: CGPointMake(heartW, 320))
//Lower-Left Curve
path.addQuadCurveToPoint(CGPointMake(heartW * 0.1, 150), controlPoint: CGPointMake(0,320))
//Upper-Left Curve
path.addQuadCurveToPoint(CGPointMake(heartW/2, 120), controlPoint: CGPointMake(heartW * 0.2, 0))
//Assign CGPath
heartLyr.path = path.CGPath
//Add as sublayer of boxLyr
boxLyr.addSublayer(heartLyr)

//===== CREATE TEXT LAYER =====(as sublayer of heartLyr)
var txtLyr = CATextLayer()
txtLyr.bounds = CGRectMake(0, 0, heartW * 0.8, 120.0)
txtLyr.position = CGPointMake(heartW/2, heartH/2)
txtLyr.font = UIFont(name: "Baskerville-Bold", size: 20.0)
txtLyr.fontSize = 50.0
txtLyr.alignmentMode = kCAAlignmentCenter
txtLyr.string = "My Heart Beats For You!"
txtLyr.wrapped = true
txtLyr.shadowColor = UIColor.blackColor().CGColor
txtLyr.shadowRadius = 2.0
txtLyr.shadowOffset = CGSizeMake(2, 2)
txtLyr.shadowOpacity = 1.0
txtLyr.transform = CATransform3DMakeRotation(CGFloat(-M_PI/12), 0, 0, 1.0)
heartLyr.addSublayer(txtLyr)
































//SUBLAYER AND SUBVIEW
var lyr = CALayer()
lyr.bounds = CGRectMake(0, 0, 200, 200)
lyr.position = CGPoint(x: 200, y: 200)
lyr.cornerRadius = 100
println(lyr.frame.size)
lyr.backgroundColor = UIColor.brownColor().CGColor
view.layer.addSublayer(lyr)


var subview = UIView(frame: CGRectMake(0, 0, 50, 50))
subview.backgroundColor = UIColor.magentaColor()
view.addSubview(subview)

//View Animation
UIView.animateWithDuration(2.0, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut,
    animations: {
        subview.center = CGPointMake(400, 200)
    },
    completion:{ (arg:Bool) in
        subview.alpha = 0.5
    }
)

//Layer Animation
var ani = CABasicAnimation(keyPath: "position")
ani.toValue = NSValue(CGPoint: CGPointMake(400, 400))
ani.autoreverses = false
ani.fillMode = kCAFillModeForwards
ani.removedOnCompletion = false
ani.duration = 5.0
ani.repeatCount = 1
lyr.addAnimation(ani, forKey: "moveani")






