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
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subtitle = subtitles.randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
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
