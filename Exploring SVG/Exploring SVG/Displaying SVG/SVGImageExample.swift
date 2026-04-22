//
//  SVGImageExample.swift
//  Exploring SVG
//
//  Created by JIHYEON YOON on 4/20/26.
//

import SwiftUI

struct SVGImageExample: View {
    var body: some View {
        VStack {
            Text("Hello, SVG Bicycle!")
            Image(.bike)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding()
            Image(.bike)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding()
                .foregroundStyle(LinearGradient(colors: [.red, .blue, .indigo, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
                .background(.black)
        }
    }
}

#Preview {
    SVGImageExample()
}
