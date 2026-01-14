//
//  TitleView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI

struct TitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
            Spacer()
            RotatableCircleView()
        }
    }
}

#Preview {
    TitleView()
}
