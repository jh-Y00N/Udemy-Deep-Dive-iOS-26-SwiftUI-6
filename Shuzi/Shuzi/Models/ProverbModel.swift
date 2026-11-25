//
//  ProverbModel.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/3/26.
//

import Foundation

struct ProverbModel: Codable {
    let id: String
    let proverb: String
    let pinyin: String
    let translation: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case proverb, pinyin, translation
    }
    
    static func defaultQuote() -> ProverbModel {
        .init(
            id: "63e6ae053bd28e8c186fdf5d",
            proverb: "逆境出人才。",
            pinyin: "Nì jìng chū rén cái",
            translation: "Adversity yields flair."
        )
    }
}
