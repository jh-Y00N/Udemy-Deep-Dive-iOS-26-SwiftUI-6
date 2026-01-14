//
//  BackgroundView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.myBlue1, .myBlue2], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
