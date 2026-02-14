//
//  FloatingHeartView.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import SwiftUI

struct FloatingHeartView: View {
    
    let heart: HeartParticle
    let size: CGSize
    
    @State private var move = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: heart.size, height: heart.size)
            .foregroundStyle(.white.opacity(0.7))
            .position(
                x: size.width * heart.xPosition,
                y: move ? -50 : size.height + 50
            )
            .opacity(move ? 0 : 1)
            .animation(
                .linear(duration: heart.duration)
                .repeatForever(autoreverses: false)
                .delay(heart.delay),
                value: move
            )
            .onAppear {
                move = true
            }
    }
}
