//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Elena Mikhailova on 11.01.2023.
//

import SwiftUI

struct TrafficLightView: View {
    var body: some View {
        ZStack {
            BackGroundView()
            CirclesView()
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
