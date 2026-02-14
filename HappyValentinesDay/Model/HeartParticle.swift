//
//  HeartParticle.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import Foundation

struct HeartParticle: Identifiable {
    let id = UUID()
    let xPosition = CGFloat.random(in: 0.1...0.9)
    let size = CGFloat.random(in: 12...26)
    let duration = Double.random(in: 6...12)
    let delay = Double.random(in: 0...6)
}
