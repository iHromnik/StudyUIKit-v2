//
//  TestView.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 26.02.2024.
//

import UIKit

//@IBDesignable

class TestView: UIView {
    
 
    
    @IBInspectable var radius: CGFloat = 20
    
    
//    @IBInspectable var filled: Bool = true
//    @IBInspectable var strokeWidth: CGFloat = 2.0
//    @IBInspectable var strokeColor: UIColor? = .red
//    @IBInspectable var fillColor: UIColor? = .red

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {return}
        
        context.fill(CGRect(x: 0, y: 0, width: 50, height: 50))
        
        
        context.fillEllipse(in: CGRect(x: rect.midX, y: 0, width: radius * 2, height: radius*2))
        
//        let triangle = UIBezierPath()
//        triangle.move(to: CGPoint(x: 0, y: rect.width/2))
//        triangle.addLine(to: CGPoint(x: rect.height/2, y: rect.width/2))
//        triangle.addLine(to: CGPoint(x: rect.height/2, y: rect.width))
//        triangle.close()
//        triangle.fill()
        
        
//        let bezierPath = UIBezierPath(heartIn: self.bounds)
//
//           if self.strokeColor != nil {
//               self.strokeColor!.setStroke()
//           } else {
//               self.tintColor.setStroke()
//           }
//
//           bezierPath.lineWidth = self.strokeWidth
//           bezierPath.stroke()
//
//           if self.filled {
//               self.tintColor.setFill()
//               bezierPath.fill()
//           }
        
        
    }
    

}

extension UIBezierPath {
    convenience init(heartIn rect: CGRect) {
        self.init()

        //Calculate Radius of Arcs using Pythagoras
        let sideOne = rect.width * 0.4
        let sideTwo = rect.height * 0.3
        let arcRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2

        //Left Hand Curve
        self.addArc(withCenter: CGPoint(x: rect.width * 0.3, y: rect.height * 0.35), radius: arcRadius, startAngle: 135.degreesToRadians, endAngle: 315.degreesToRadians, clockwise: true)

        //Top Centre Dip
        self.addLine(to: CGPoint(x: rect.width/2, y: rect.height * 0.2))

        //Right Hand Curve
        self.addArc(withCenter: CGPoint(x: rect.width * 0.7, y: rect.height * 0.35), radius: arcRadius, startAngle: 225.degreesToRadians, endAngle: 45.degreesToRadians, clockwise: true)

        //Right Bottom Line
        self.addLine(to: CGPoint(x: rect.width * 0.5, y: rect.height * 0.95))

        //Left Bottom Line
        self.close()
    }
}

extension Int {
    var degreesToRadians: CGFloat { return CGFloat(self) * .pi / 180 }
}
