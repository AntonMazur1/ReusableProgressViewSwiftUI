//
//  ContentView.swift
//  ProgressViewSwiftUI
//
//  Created by Клоун on 20.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack(spacing: 30) {
            CircleView(value: $sliderValue)
                .frame(width: 200, height: 200)
            Slider(value: $sliderValue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
