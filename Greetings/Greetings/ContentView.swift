//
//  ContentView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
