//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Иван Гришин on 04.11.2021.
//

import SwiftUI


struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.black)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 170, height: 60)
        }
        .background(Color.blue)
        .cornerRadius(100)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", action: {})
    }
}
