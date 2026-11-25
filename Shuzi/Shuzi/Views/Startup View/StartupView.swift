//
//  StartupView.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/9/26.
//

import SwiftUI

struct StartupView: View {
    @State private var vm = StartupViewModel()
    @State private var path: [Destination] = []
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                // MARK: Title Section View
                TitleSectionView(isIpad: isIpad)
                Spacer()
                // MARK: Proverb Card View
                ProverbCardView(
                    proverbModel: vm.proverbModel,
                    isLoading: vm.isLoading,
                    isIpad: isIpad
                )
                Spacer()
                // MARK: Start Button
                GradientButton(
                    title: "Start Learning",
                    systemImage: "play.fill",
                    isIpad: isIpad) {
                        path.append(Destination.game)
                    }
            }.padding()
                .navigationDestination(for: Destination.self) { destination in
                    switch destination {
                    case .game:
                        GameView(path: $path)
                    }
                }
                .task {
                    await vm.fetchQuote()
                    
                    if let proverbModel = vm.proverbModel {
                        SpeechManager.shared.speakChinese(proverbModel.proverb)
                        SpeechManager.shared
                            .speakEnglish(proverbModel.translation)
                    }
                }
        }
    }
}

#Preview {
    StartupView()
}
