//
//  TitleView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    var angularGradient = AngularGradient(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow,]), center: .center, angle: .zero)
    
    @State private var isRotated = false
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Exploring iOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
            Spacer()
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
}

#Preview {
    TitleView()
}
