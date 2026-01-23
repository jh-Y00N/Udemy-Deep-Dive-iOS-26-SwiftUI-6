//
//  TitleView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI
import TipKit

struct TitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    private var greetingsTip = GreetingsTip()
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle).popoverTip(greetingsTip)
            Spacer()
            RotatableCircleView()
        }
    }
}

#Preview {
    TitleView()
}
