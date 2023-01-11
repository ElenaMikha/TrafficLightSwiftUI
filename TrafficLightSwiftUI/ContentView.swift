//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack {
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .padding(10)
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 150, height: 150)
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    
                    
                }
                .padding(0.0)
    
                
                Button("Text", action: {})
                
            }
            
        }
      
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
