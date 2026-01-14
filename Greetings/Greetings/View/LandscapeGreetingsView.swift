//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/13/26.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
