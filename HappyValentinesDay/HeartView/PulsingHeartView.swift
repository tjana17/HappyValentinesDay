//
//  PulsingHeartView.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import SwiftUI

struct PulsingHeartView: View {
    
    @State private var breathe = false
    
    private let baseSize: CGFloat = 160
    
    var body: some View {
        ZStack {
            
            // Outer Glow Layer
            HeartShape(morph: breathe ? 1 : 0)
                .fill(
                    RadialGradient(
                        colors: [
                            Color.white.opacity(0.6),
                            Color.pink.opacity(0.4),
                            Color.clear
                        ],
                        center: .center,
                        startRadius: 20,
                        endRadius: 200
                    )
                )
                .scaleEffect(breathe ? 1.25 : 0.85)
                .blur(radius: 30)
                .opacity(breathe ? 0.9 : 0.5)
            
            // Main Heart
            HeartShape(morph: breathe ? 1 : 0)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.white,
                            Color.pink.opacity(0.85)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: baseSize, height: baseSize)
                .scaleEffect(breathe ? 1.12 : 0.92)
                .shadow(
                    color: .white.opacity(breathe ? 0.6 : 0.3),
                    radius: breathe ? 30 : 15
                )
        }
        .animation(
            .easeInOut(duration: 3.2)
            .repeatForever(autoreverses: true),
            value: breathe
        )
        .onAppear {
            breathe = true
        }
        .compositingGroup()
        .drawingGroup()
    }
}
