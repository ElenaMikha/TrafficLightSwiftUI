//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
 @State private var lightIsOn = 1
 @State private var lightIsOff = 0.3
    
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
//    if startButton.currentTitle == "START" {
//        startButton.setTitle("NEXT", for: .normal)
//    }
//    func startButtonPressed() {
//        if self. == "START" {
//            Text("NEXT")
//
//        }
//
//            if startButton.currentTitle == "START" {
//                startButton.setTitle("NEXT", for: .normal)
//
//
//            switch currentLight {
//            case .red:
//                greenLight.alpha = lightIsOff
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

