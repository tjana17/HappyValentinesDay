//
//  HeartShape.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import Foundation
import SwiftUI

struct HeartShape: Shape {
    
    var morph: CGFloat
    
    var animatableData: CGFloat {
        get { morph }
        set { morph = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        
        let topCurve = height * (0.3 + 0.1 * morph)
        
        var path = Path()
        
        path.move(to: CGPoint(x: width / 2, y: height))
        
        path.addCurve(
            to: CGPoint(x: 0, y: topCurve),
            control1: CGPoint(x: width / 2 - width * 0.4, y: height * (0.8 - 0.2 * morph)),
            control2: CGPoint(x: 0, y: height * 0.6)
        )
        
        path.addArc(
            center: CGPoint(x: width * 0.25, y: topCurve),
            radius: width * 0.25,
            startAngle: .degrees(180),
            endAngle: .degrees(0),
            clockwise: false
        )
        
        path.addArc(
            center: CGPoint(x: width * 0.75, y: topCurve),
            radius: width * 0.25,
            startAngle: .degrees(180),
            endAngle: .degrees(0),
            clockwise: false
        )
        
        path.addCurve(
            to: CGPoint(x: width / 2, y: height),
            control1: CGPoint(x: width, y: height * 0.6),
            control2: CGPoint(x: width / 2 + width * 0.4, y: height * (0.8 - 0.2 * morph))
        )
        
        return path
    }
}
