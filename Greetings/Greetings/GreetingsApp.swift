//
//  GreetingsApp.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/10/26.
//

import SwiftUI

@main
struct GreetingsApp: App {
//    @State private var language = "en"
//    @State private var languageDirection = LEFT_TO_RIGHT
    @AppStorage("language") var language = "en"
    @AppStorage("languageDirectionString") var languageDirection = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirection == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
