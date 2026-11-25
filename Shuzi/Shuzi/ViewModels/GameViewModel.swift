//
//  GameViewModel.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/7/26.
//

import Foundation

@Observable
class GameViewModel {
    var currentOption: Option = GameData.randomOption()
    var options: [Option] = []
    var currentQuestion = 1
    var score = 0
    var isGameOver = false
    
    let totalQuestions: Int
    
    init(totalQuestions: Int = 10) {
        self.totalQuestions = totalQuestions
        generateOptions()
    }
    
    func generateOptions() {
        let correct = currentOption
        var wrong: [Option] = []
        while wrong.count < 3 {
            let randomOption = GameData.randomOption()
            if randomOption != correct, !wrong.contains(randomOption) {
                wrong.append(randomOption)
            }
        }
        
        options = (wrong + [correct]).shuffled()
    }
    
    func nextQuestion() {
        if currentQuestion >= totalQuestions {
            isGameOver = true
        } else {
            currentQuestion += 1
            currentOption = GameData.randomOption()
            generateOptions()
        }
    }
    
    func selectOption(_ selected: Option) {
        let isCorrect = selected == currentOption
        if isCorrect {
            score += 1
        }
        nextQuestion()
    }
    
    func resetGame() {
        score = 0
        currentQuestion = 1
        isGameOver = false
        currentOption = GameData.randomOption()
        generateOptions()
    }
    
    func playAudio(_ text: String) {
        SpeechManager.shared.speakChinese(text)
    }
}
