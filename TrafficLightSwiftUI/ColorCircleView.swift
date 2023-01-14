//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 14.01.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
       Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
