//
//  FlipClockTextEffect.swift
//  FlipClockAnimation
//
//  Created by Oncu Can on 30.05.2024.
//

import SwiftUI

struct FlipClockTextEffect: View {
    /// Config
    var value: Int
    var size: CGSize
    var fontSize: CGFloat
    var cornerRadius: CGFloat
    var foreground: Color
    var background: Color
    
    var body: some View {
        let halfHeight = size.height * 0.5
        
        ZStack {
            UnevenRoundedRectangle(topLeadingRadius: cornerRadius, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: cornerRadius)
                .fill(background.gradient.shadow(.inner(radius: 1)))
                .frame(height: halfHeight)
                .overlay(alignment: .top) {
                    Text("\(value)")
                        .font(.system(size: fontSize).bold())
                }
                .frame(maxHeight: .infinity, alignment: .top)
            
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: cornerRadius, bottomTrailingRadius: cornerRadius, topTrailingRadius: 0)
                .fill(background.gradient.shadow(.inner(radius: 1)))
                .frame(height: halfHeight)
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .frame(width: size.width, height: size.height)
    }
}

#Preview {
    ContentView()
}
