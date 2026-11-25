//
//  ProverbContentView.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/9/26.
//

import SwiftUI

struct ProverbContentView: View {
    let proverbModel: ProverbModel
    let isIpad: Bool
    
    var body: some View {
        VStack(spacing: isIpad ? 12 : 8) {
            VStack {
                Text("\"" + proverbModel.proverb + "\"")
                    .font(isIpad ? .title : .title3)
                    .foregroundStyle(.primary)
                Text(proverbModel.pinyin)
                    .font(isIpad ? .title2 : .headline)
                    .foregroundStyle(.secondary)
            }.onTapGesture {
                SpeechManager.shared.speakChinese(proverbModel.proverb)
            }
            Text(proverbModel.translation)
                .font(isIpad ? .title3 : .subheadline)
                .foregroundStyle(.secondary)
                .onTapGesture {
                    SpeechManager.shared.speakEnglish(proverbModel.translation)
                }
        }.multilineTextAlignment(.center)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

#Preview {
    ProverbContentView(proverbModel: ProverbModel.defaultQuote(), isIpad: false)
}
