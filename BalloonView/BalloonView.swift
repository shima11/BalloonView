//
//  BalloonView.swift
//  BalloonView
//
//  Created by Jinsei Shima on 2018/11/18.
//  Copyright © 2018 Jinsei Shima. All rights reserved.
//

import UIKit

public class BalloonView: UIView {
    
    public init() {
        super.init(frame: .zero)
        backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func radian(_ angle: CGFloat) -> CGFloat {
        return angle * CGFloat(CGFloat.pi) / 180
    }
    
    override public func draw(_ rect: CGRect) {
        
        let bezierPath = UIBezierPath()
        
        let topLeft: CGFloat = 8
        let topRight: CGFloat = 8
        let bottomRight: CGFloat = 8
        let bottomLeft: CGFloat = 8
        
        let arrowHeight: CGFloat = 10
        let arrowWidth: CGFloat = 20
        
        let arrowPositionX: CGFloat = rect.maxX / 2
        
        //Draw main body
        
        bezierPath.move(to: CGPoint(x: topLeft, y: 0))
        
        bezierPath.addLine(to: CGPoint(x: rect.maxX - topRight, y: 0))
        bezierPath.addArc(
            withCenter: CGPoint(x: rect.maxX - topRight, y: topRight),
            radius: topRight,
            startAngle: radian(-90),
            endAngle: radian(0),
            clockwise: true
        )
        
        bezierPath.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottomRight - arrowHeight))
        bezierPath.addArc(
            withCenter: CGPoint(x: rect.maxX - bottomRight, y: rect.maxY - bottomRight - arrowHeight),
            radius: bottomRight,
            startAngle: radian(0),
            endAngle: radian(90),
            clockwise: true
        )
        
        bezierPath.addLine(to: CGPoint(x: bottomLeft, y: rect.maxY - arrowHeight))
        bezierPath.addArc(
            withCenter: CGPoint(x: bottomLeft, y: rect.maxY - bottomLeft - arrowHeight),
            radius: bottomLeft,
            startAngle: radian(90),
            endAngle: radian(180),
            clockwise: true
        )
        
        bezierPath.addLine(to: CGPoint(x: 0, y: topLeft))
        bezierPath.addArc(
            withCenter: CGPoint(x: topLeft, y: topLeft),
            radius: topLeft,
            startAngle: radian(180),
            endAngle: radian(270),
            clockwise: true
        )
        
        
        //Draw the tail
        bezierPath.move(to: CGPoint(x: arrowPositionX - arrowWidth / 2, y: rect.maxY - arrowHeight))
        bezierPath.addLine(to: CGPoint(x: arrowPositionX, y: rect.maxY))
        bezierPath.addLine(to: CGPoint(x: arrowPositionX + arrowWidth / 2, y: rect.maxY - arrowHeight))
        
        // Draw
        UIColor.lightGray.setFill()
        bezierPath.fill()
        bezierPath.close()
        
    }
    
}
