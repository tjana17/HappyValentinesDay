//
//  PulsingGlowBackground.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import SwiftUI

struct PulsingGlowBackground: View {
    
    var animate: Bool
    
    var body: some View {
        ZStack {
            
            Color(red: 0.92, green: 0.24, blue: 0.30)
            
            RadialGradient(
                gradient: Gradient(colors: [
                    Color.white.opacity(0.35),
                    Color.white.opacity(0.15),
                    Color.clear
                ]),
                center: .center,
                startRadius: 20,
                endRadius: 350
            )
            .scaleEffect(animate ? 1.25 : 0.9)
            .opacity(animate ? 0.8 : 0.5)
            .blendMode(.screen)
            .animation(
                .easeInOut(duration: 2.8)
                .repeatForever(autoreverses: true),
                value: animate
            )
        }
    }
}
#Preview {
    PulsingGlowBackground(animate: true)
}