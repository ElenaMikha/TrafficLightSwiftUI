//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    private let lightIsOn = 1
    private let lightIsOff = 0.3
    
    enum CurrentLight {
        case red, yellow, green
    }
    @State var currentLight = CurrentLight.red
    
    var body: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack {
                    Circle()
                        .foregroundColor(.red)
                        .opacity(lightIsOff)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    Circle()
                        .foregroundColor(.yellow)
                        .opacity(lightIsOff)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .padding(10)
                    Circle()
                        .foregroundColor(.green)
                        .opacity(lightIsOff)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                }
                .padding()
                Spacer()
                
                Button(action: {} ) {
                    Text("START")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding()
                        .background(
                            Color
                                .blue
                                .cornerRadius(15)
                        )
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

