//
//  Option.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/3/26.
//

import Foundation

struct Option: Identifiable, Equatable {
    let id = UUID()
    let number: Int
    let chinese: String
    let pinyin: String
    
    static let one: Option = .init(
        number: 1,
        chinese: "一",
        pinyin: "yī"
    )
    static let two: Option = .init(
        number: 2,
        chinese: "二",
        pinyin: "èr"
    )
    static let three: Option = .init(
        number: 3,
        chinese: "三",
        pinyin: "sān"
    )
    static let four: Option = .init(
        number: 4,
        chinese: "四",
        pinyin: "sì"
    )
}
