//
//  SFSymbolView.swift
//  Breathe Rotate Wiggle Effects
//
//  Created by JIHYEON YOON on 5/13/26.
//

import SwiftUI

struct SFSymbolView: View {
    let name: String
    var body: some View {
        Image(systemName: name)
            .imageScale(.large)
            .bold()
            .symbolRenderingMode(.multicolor)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    SFSymbolView(name: "leaf.arrow.trianglehead.clockwise")
}
