//
//  Greetings_MacApp.swift
//  Greetings-Mac
//
//  Created by JIHYEON YOON on 1/23/26.
//

import SwiftUI
import TipKit

@main
struct Greetings_MacApp: App {
    @AppStorage("language") var language = "en"
    @AppStorage("languageDirectionString") var languageDirection = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirection == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    let resetTip = true
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    if resetTip {
                        try? Tips.resetDatastore()
                    }
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
