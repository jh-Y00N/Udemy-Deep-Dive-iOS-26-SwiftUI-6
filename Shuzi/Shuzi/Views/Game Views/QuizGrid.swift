//
//  QuizGrid.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/20/26.
//

import SwiftUI

struct QuizGrid: View {
    let options: [Option]
    let onAnswerSelect: (Option) -> Void
    
    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem()], spacing: 16) {
            ForEach(options) { option in
                Button {
                    onAnswerSelect(option)
                } label: {
                    Text("\(option.number)")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                }
                #if os(visionOS)
                .background(.secondary.opacity(0.2))
                .clipShape(.rect(cornerRadius: 20))
                #else
                .background(.blue.opacity(0.2))
                .clipShape(.rect(cornerRadius: 20))
                #endif
            }
        }
    }
}

#Preview {
    QuizGrid(options: [.one, .two, .three, .four], onAnswerSelect: { _ in })
}
