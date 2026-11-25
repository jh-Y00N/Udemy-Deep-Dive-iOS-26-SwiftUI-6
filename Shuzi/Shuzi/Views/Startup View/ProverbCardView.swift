//
//  ProverbCardView.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/9/26.
//

import SwiftUI

struct ProverbCardView: View {
    let proverbModel: ProverbModel?
    let isLoading: Bool
    let isIpad: Bool
    
    var body: some View {
        GroupBox {
            VStack {
                Divider()
                if isLoading {
                    ProgressView("Welcome! 欢迎 Huānyíng")
                        .controlSize(.regular)
                        .tint(.indigo)
                        .padding(.vertical, 8)
                } else if let proverbModel {
                    ProverbContentView(
                        proverbModel: proverbModel,
                        isIpad: isIpad
                    )
                } else {
                    ProverbContentView(
                        proverbModel: ProverbModel.defaultQuote(),
                        isIpad: isIpad
                    )
                }
            }
        } label: {
            Label("Daily Wisdon", systemImage: "wand.and.sparkles")
                .font(.headline)
                .foregroundStyle(.indigo)
        }.padding(.horizontal)
    }
}

#Preview {
    ProverbCardView(
        proverbModel: ProverbModel.defaultQuote(),
        isLoading: false,
        isIpad: false
    )
}
