//
//  ProgressBar.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/17/26.
//

import SwiftUI

struct ProgressBar: View {
    let currentQuestion: Int
    let totalQuestions: Int
    let score: Int
    
    var progress: CGFloat {
        totalQuestions > 0 ? CGFloat(currentQuestion) / CGFloat(totalQuestions) : 0
    }
    
    var scoreProgress: CGFloat {
        currentQuestion > 1 ? CGFloat(score) / CGFloat(totalQuestions) : 0
    }
    
    @State private var isAnimated = false
    let thickness = 10.0
    
    var body: some View {
        VStack {
            ProgressHeader(
                currentQuestion: currentQuestion,
                totalQuestions: totalQuestions,
                score: score
            )
            ZStack {
                Capsule()
                    .fill(.secondary.opacity(0.2))
                    .frame(height: thickness)
                ProgressView(value: isAnimated ? progress : 0)
                    .progressViewStyle(
                        CustomProgressViewStyle(
                            colors: [.mint, .teal],
                            thickness: thickness
                        )
                    )
                ProgressView(value: isAnimated ? scoreProgress : 0).tint(.red)
                    .progressViewStyle(
                        CustomProgressViewStyle(
                            colors: [.yellow.opacity(0.6), .orange.opacity(0.6)],
                            thickness: thickness
                        )
                    )
            }
        }.padding()
            .background(.white.opacity(0.85))
            .clipShape(.rect(cornerRadius: 25))
            .shadow(radius: 6)
            .onAppear {
                isAnimated = true
            }
    }
}

struct CustomProgressViewStyle: ProgressViewStyle {
    var colors: [Color]
    var thickness: CGFloat = 10.0
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            Capsule()
                .fill(
                    LinearGradient(
                        colors: colors,
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                ).scaleEffect(
                    x: configuration.fractionCompleted ?? 0,
                    anchor: .leading
                ).animation(.easeInOut, value: configuration.fractionCompleted)
        }.frame(height: thickness)
            .clipShape(Capsule())
    }
}

#Preview {
    ProgressBar(currentQuestion: 8, totalQuestions: 10, score: 5)
}
