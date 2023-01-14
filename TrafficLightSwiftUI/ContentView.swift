//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}
struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redlightState = 0.3
    @State private var yellowlightState = 0.3
    @State private var greenlightState = 0.3
    
    @State var currentLight = CurrentLight.red
    
    private func nextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenlightState = lightIsOff
            redlightState = lightIsOn
            currentLight = .yellow
        case .yellow:
            redlightState = lightIsOff
            yellowlightState = lightIsOn
            currentLight = .green
        case .green:
            greenlightState = lightIsOn
            yellowlightState = lightIsOff
            currentLight = .red
        }
        
    }
}
extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20){
                ColorCircleView(color: .red, opacity: redlightState)
                ColorCircleView(color: .yellow, opacity: yellowlightState)
                ColorCircleView(color: .green, opacity: greenlightState)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

