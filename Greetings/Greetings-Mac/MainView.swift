//
//  MainView.swift
//  Greetings-Mac
//
//  Created by JIHYEON YOON on 1/23/26.
//

import SwiftUI

struct MainView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        NavigationStack {
            GreetingsView()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                    }
                }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
