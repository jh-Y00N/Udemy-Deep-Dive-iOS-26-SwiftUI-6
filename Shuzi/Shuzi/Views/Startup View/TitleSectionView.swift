//
//  TitleSectionView.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/9/26.
//

import SwiftUI

struct TitleSectionView: View {
    let isIpad: Bool
    
    let linearGradient = LinearGradient(
        colors: [.indigo, .purple],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    var body: some View {
        VStack {
            Text("数")
                .font(
                    .system(size: isIpad ? 160 : 80, weight: .bold)
                ).padding()
                .background(linearGradient)
                .clipShape(Circle())
                .foregroundStyle(.white)
                .shadow(radius: isIpad ? 10 : 5)
            Text("Chinese Numbers")
                .font(isIpad ? .largeTitle.bold() : .title.bold())
            Text("Learn numbers the fun way!")
                .font(isIpad ? .title2 : .subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    TitleSectionView(isIpad: false)
}

#Preview {
    TitleSectionView(isIpad: true)
}
