//
//  ProgressHeader.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/17/26.
//

import SwiftUI

struct ProgressHeader: View {
    let currentQuestion: Int
    let totalQuestions: Int
    let score: Int
    
    var background: LinearGradient = LinearGradient(
        colors: [.yellow.opacity(0.25), .orange.opacity(0.25)],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var questionColor: Color {
        UIDevice.isVisionOS ? .gray : .secondary
    }
    
    var body: some View {
        HStack {
            Image(systemName: "trophy.fill")
                .foregroundStyle(.yellow)
            Text("Question \(currentQuestion) of \(totalQuestions)")
                .fontWeight(.semibold)
                .foregroundStyle(questionColor)
            Spacer()
            HStack {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text("\(score) correct")
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 4)
            .background(background, in: Capsule())
        }
    }
}

#Preview {
    ProgressHeader(currentQuestion: 5, totalQuestions: 10, score: 3)
}
