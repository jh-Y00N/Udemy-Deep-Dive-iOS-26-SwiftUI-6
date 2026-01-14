//
//  MainView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/13/26.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
