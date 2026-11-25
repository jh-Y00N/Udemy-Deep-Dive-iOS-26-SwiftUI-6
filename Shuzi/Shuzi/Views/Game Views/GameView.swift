//
//  GameView.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/13/26.
//

import SwiftUI

struct GameView: View {
    @State private var vm = GameViewModel()
    @AppStorage("showPinyin") private var showPinyin: Bool = true
    @Binding var path: [Destination]
    
    var body: some View {
        VStack {
            ProgressBar(
                currentQuestion: vm.currentQuestion,
                totalQuestions: vm.totalQuestions,
                score: vm.score
            )
            Spacer()
            NumberDisplay(
                number: vm.currentOption,
                showPinyin: showPinyin) {
                    vm.playAudio(vm.currentOption.chinese)
                } onTogglePinyin: {
                    showPinyin.toggle()
                }
            
            Spacer()
            QuizGrid(options: vm.options, onAnswerSelect: vm.selectOption)
        }.padding()
            .onChange(of: vm.currentOption, { oldValue, newValue in
                vm.playAudio(newValue.chinese)
            })
            .onAppear {
                vm.playAudio(vm.currentOption.chinese)
            }
            .sheet(isPresented: $vm.isGameOver) {
                GameOverScreen(
                    score: vm.score,
                    totalQuestion: vm.totalQuestions) {
                        vm.resetGame()
                    } onGoHome: {
                        vm.resetGame()
                        path = []
                    }
                    .interactiveDismissDisabled()
            }
    }
}

#if os(visionOS)
#Preview("VisionOS Preview", windowStyle: .automatic) {
    GameView(path: .constant([]))
}
#else
#Preview("Default Preview") {
    GameView(path: .constant([]))
}
#endif
