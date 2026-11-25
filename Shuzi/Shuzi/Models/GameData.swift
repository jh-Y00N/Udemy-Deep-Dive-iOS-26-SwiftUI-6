//
//  GameData.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/5/26.
//

import Foundation

struct GameData {
    static let allOptions: [Option] = (1...99).map { num in
            .init(
                number: num,
                chinese: chinese(for: num),
                pinyin: pinyin(for: num)
            )
    }
    
    static func randomOption() -> Option {
        return GameData.allOptions.randomElement() ?? Option.one
    }
    
    static func chinese(for number: Int) -> String {
        let digits = ["", "一", "二", "三", "四", "五", "六", "七", "八", "九"]
        
        if number <= 10 {
            return number == 10 ? "十" : digits[number]
        } else if number < 20 {
            return "十" + digits[number % 10]
        } else {
            let tens = digits[number / 10]
            let ones = digits[number % 10]
            return tens + "十" + ones
        }
    }
    
    static func pinyin(for number: Int) -> String {
        let digits = ["", "yī", "èr", "sān", "sì", "wǔ", "liù", "qī", "bā", "jiǔ"]
        
        if number <= 10 {
            return number == 10 ? "shí" : digits[number]
        } else if number < 20 {
            return "shí" + digits[number % 10]
        } else {
            let tens = digits[number / 10]
            let ones = digits[number % 10]
            return tens + " shí " + ones
        }
    }
}
