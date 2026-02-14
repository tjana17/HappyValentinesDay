//
//  FloatingHeartsLayer.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import Foundation
import SwiftUI

struct FloatingHeartsLayer: View {
    
    let hearts = (0..<18).map { _ in HeartParticle() }
    
    var body: some View {
        GeometryReader { geo in
            ForEach(hearts) { heart in
                FloatingHeartView(heart: heart, size: geo.size)
            }
        }
    }
}
