//
//  CircleView.swift
//  ProgressViewSwiftUI
//
//  Created by Клоун on 20.09.2022.
//

import SwiftUI

struct CircleView: View {
    @Binding var value: Double
    let backColor: Color
    let foregroundColor: Color
    
    var body: some View {
        ZStack {
            Text("\(String(format: "%.2f", value))")
                .frame(width: 100, height: 100)
            Circle()
                .stroke(
                    backColor.opacity(0.5),
                    lineWidth: 30
                )
                .overlay(Circle()
                    .trim(from: 0, to: value)
                    .stroke(foregroundColor,
                            style: StrokeStyle(lineWidth: 30, lineCap: .round)))
                .rotationEffect(.degrees(-90))
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(value: .constant(0), backColor: .pink, foregroundColor: .pink)
    }
}
