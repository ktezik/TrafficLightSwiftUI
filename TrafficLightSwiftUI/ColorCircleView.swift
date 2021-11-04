//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Иван Гришин on 01.11.2021.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var opacity: Double
    var shadowRadius: CGFloat
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 10))
            .shadow(color: color, radius: shadowRadius)
            
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1, shadowRadius: 50)
    }
}
