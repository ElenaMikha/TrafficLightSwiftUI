//
//  CirclesView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 150, height: 150)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 150, height: 150)
            Circle()
                .foregroundColor(.green)
                .frame(width: 150, height: 150)
            
}
        .padding(.top, -200)
        
    }
    
    struct CirclesView_Previews: PreviewProvider {
        static var previews: some View {
            CirclesView()
        }
    }
}
