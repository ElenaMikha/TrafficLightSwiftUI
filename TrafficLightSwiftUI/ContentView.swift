//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    @State var title: String = "NEXT"
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
                
                Button(action: {}) {
                    Text("START".uppercased())
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding()
                        .background(
                            Color.blue
                            .cornerRadius(15)
                        )
                    }
                
                }
        }
    }
    //                func startButtonPressed() {
    //                    if  == "START" {
    //                        Text("NEXT")
    //                    }
    //            enum CurrentLight {
    //                case red, yellow, green
    //            }
    //            switch currentLight {
    //            case .red:
    //                    .opacity(lightIsOff)
    //                redLight.alpha = lightIsOn
    //                currentLight = .yellow
    //            case .yellow:
    //                redLight.alpha = lightIsOff
    //                yellowLight.alpha = lightIsOn
    //                currentLight = .green
    //            case .green:
    //                greenLight.alpha = lightIsOn
    //                yellowLight.alpha = lightIsOff
    //                currentLight = .red
    //            }
    //        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

