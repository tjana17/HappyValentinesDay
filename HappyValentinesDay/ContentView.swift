//
//  ContentView.swift
//  HappyValentinesDay
//
//  Created by Janarthanan Kannan on 14/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animateGlow = false
        @State private var showText = false
        @State private var morphHeart = false
        
        var body: some View {
            ZStack {
                
                PulsingGlowBackground(animate: animateGlow)

                
                FloatingHeartsLayer()
                
                VStack(spacing: 40) {
                    
                    Spacer()
                    
                    PulsingHeartView()
                        .frame(height: 160)
                    
                    VStack(spacing: 8) {
                        if showText {
                            Text("Happy Valentine's Day")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundStyle(.white)
                                .transition(.move(edge: .bottom).combined(with: .opacity))
                        }
                    }
                    
                    Spacer()
                }
            }
            .onAppear {
                
                animateGlow = true
                
                withAnimation(.easeInOut(duration: 1.8)) {
                    morphHeart = true
                }
                
                withAnimation(.easeOut(duration: 1.5).delay(1.0)) {
                    showText = true
                }
            }
            .compositingGroup()
            .drawingGroup()
            .ignoresSafeArea()
        }
}

#Preview {
    ContentView()
}


