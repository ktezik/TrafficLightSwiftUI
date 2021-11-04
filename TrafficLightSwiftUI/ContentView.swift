//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Иван Гришин on 01.11.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    let opacityParameter: Double = 0.4
    let shadowRadiusParameter: CGFloat = 0
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonName = "Start"
    
    @State private var opacityRed: Double = 0.4
    @State private var opacityYellow: Double = 0.4
    @State private var opacityGreen: Double = 0.4
    @State private var shadowRadiusRed: Double = 0
    @State private var shadowRadiusYellow: Double = 0
    @State private var shadowRadiusGreen: Double = 0
    
    var body: some View {
        VStack {
            setView
            ButtonView(title: buttonName) {
                trafficLogic()
            }
            .padding(.bottom, 100.0)
        }
    }
    
    private var setView: some View {
        VStack {
            ColorCircleView(color: .red, opacity: opacityRed, shadowRadius: shadowRadiusRed)
                .padding(.top, 30.0)
            ColorCircleView(color: .yellow, opacity: opacityYellow, shadowRadius: shadowRadiusYellow)
                .padding(.top)
            ColorCircleView(color: .green, opacity: opacityGreen, shadowRadius: shadowRadiusGreen)
                .padding(.top)
            Spacer()
        }
    }
    
    private func trafficLogic() {
        let opacityOn: Double = 0.4
        let opacityOff: Double = 1
        let shadowOff: Double = 0
        let shadowOn: Double = 50
        
        if buttonName == "Start" {
            buttonName = "Next"
        }
        
        switch currentLight {
        case .red:
            opacityGreen = opacityOn
            opacityRed = opacityOff
            shadowRadiusGreen = shadowOff
            shadowRadiusRed = shadowOn
            
            currentLight = CurrentLight.yellow
        case .yellow:
            opacityRed = opacityOn
            opacityYellow = opacityOff
            shadowRadiusRed = shadowOff
            shadowRadiusYellow = shadowOn
            
            currentLight = CurrentLight.green
        case .green:
            opacityYellow = opacityOn
            opacityGreen = opacityOff
            shadowRadiusYellow = shadowOff
            shadowRadiusGreen = shadowOn
            
            currentLight = CurrentLight.red
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
