//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/13/26.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    var angularGradient = AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow,]), center: .center, angle: .zero)
    
    @State private var isRotated = false
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
