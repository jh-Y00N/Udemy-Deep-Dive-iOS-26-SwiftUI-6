//
//  GradientButton.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/9/26.
//

import SwiftUI

struct GradientButton: View {
    let title: String
    let systemImage: String
    let isIpad: Bool
    let action: () -> Void
    
    private let linearGradient: LinearGradient = LinearGradient(
        colors: [.indigo, .purple],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var cornerRadius: CGFloat {
        if isIpad {
            return 20
        } else {
            return UIDevice.isVisionOS ? 30 : 15
        }
    }
    
    var body: some View {
        Button(action: action) {
            Label(title, systemImage: systemImage)
                .font(isIpad ? .title.bold() : .headline.bold())
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.white)
        }
        .background(linearGradient)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .shadow(radius: isIpad ? 5 : 2.5)
        .tint(linearGradient)
    }
}

#Preview {
    GradientButton(
        title: "Start Learning",
        systemImage: "play.fill",
        isIpad: false,
        action: {}
    )
}
