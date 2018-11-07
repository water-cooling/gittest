//
//  draw.swift
//  Runtime
//
//  Created by humengfan on 2018/3/22.
//  Copyright © 2018年 王师傅 Mac. All rights reserved.
//

import UIKit

class draw: UIView {

    override func draw(_ rect: CGRect) {
        self.backgroundColor = UIColor.white
        let context = UIGraphicsGetCurrentContext()
        let faceRect = CGRect.init(x: 0.5, y: 0.5, width: 1, height: 1)
       let  DrawCenter = CGPoint.init(x: 0.5, y: 0.5)

        let  baseSpace = CGColorSpaceCreateDeviceRGB()
        let colors = [RGB(R: 96, G: 96, B: 96).cgColor,RGB(R: 68, G: 68, B: 68).cgColor,RGB(R: 32, G: 32, B: 32).cgColor]
        let locations:[CGFloat] = [0.35,0.96,0.99]
        
        let gradient = CGGradient.init(colorsSpace: baseSpace, colors: colors as CFArray, locations:locations )
        context?.addEllipse(in: faceRect)//添加椭圆
          context?.clip()//剪切
        context?.drawRadialGradient(gradient!, startCenter: DrawCenter, startRadius: 0, endCenter: DrawCenter, endRadius: 0.5, options: .drawsAfterEndLocation)
        
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.drawPath(using: .fillStroke)

        
    }
    
    func RGB(R:CGFloat,G:CGFloat,B:CGFloat)->UIColor{
        
        return UIColor.init(red: R/255, green: G/255, blue: B/255, alpha: 1.0)
        
        
    }
    func RGBA(R:CGFloat,G:CGFloat,B:CGFloat,A:CGFloat)->CGColor{
        
        return UIColor.init(red: R/255, green: G/255, blue: B/255, alpha: A/255).cgColor
        
        
    }

}
