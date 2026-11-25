//
//  SpeechManager.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/3/26.
//

import Foundation
import AVFoundation

final class SpeechManager {
    static let shared = SpeechManager()
    private let synthesizer = AVSpeechSynthesizer()
    
    private init() {}
    
    enum Language: String {
        case chinese = "zh-CN"
        case english = "en-US"
    }
    
    private func speak(_ text: String, language: Language) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.rate = 0.45
        utterance.pitchMultiplier = 0.7
        utterance.volume = 1.0
        
        if let voice = AVSpeechSynthesisVoice(language: language.rawValue) {
            utterance.voice = voice
        } else {
            print("Language \(language.rawValue) voice is not available, using default voice.")
        }
        
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        }
        synthesizer.speak(utterance)
    }
    
    func speakChinese(_ text: String) {
        speak(text, language: .chinese)
    }
    
    func speakEnglish(_ text: String) {
        speak(text, language: .english)
    }
}
