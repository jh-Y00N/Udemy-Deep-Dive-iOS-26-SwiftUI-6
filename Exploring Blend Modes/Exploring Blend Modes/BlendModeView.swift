//
//  BlendModeView.swift
//  Exploring Blend Modes
//
//  Created by JIHYEON YOON on 3/27/26.
//

import SwiftUI

struct BlendModeView: View {
    let blendModel: BlendModel
    let opacity: Double
    let dim = 150.0
    var offset: CGFloat {
        dim / 3
    }
    var rectDim: CGFloat {
        1.75 * dim
    }
    
    var body: some View {
        VStack {
            Text(blendModel.title)
                .font(.headline)
                .padding(.top)
            ZStack {
                Circle()
                    .fill(.blue)
                    .frame(width: dim, height: dim)
                    .offset(x: -offset, y: -offset / 2)
                Circle()
                    .fill(.yellow)
                    .frame(width: dim, height: dim)
                    .offset(x: offset, y: -offset / 2)
                Circle()
                    .fill(.red)
                    .frame(width: dim, height: dim)
                    .offset(y: offset / 2)
            }
            .blendMode(blendModel.blendMode)
            .padding()
            .frame(width: rectDim, height: rectDim)
            .background(.black.opacity(opacity))
            .clipShape(.rect(cornerRadius: 15))
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 0.5)
            }
            Text(blendModel.describe)
        }
    }
}

#Preview {
    VStack {
        BlendModeView(blendModel: .init(blendMode: .normal, title: "Normal", describe: "This is the standard blend mode which uses the top layer alone, without mixing its colors with the layer beneath it."), opacity: 0.5)
        BlendModeView(blendModel: .init(blendMode: .color, title: "Color", describe: "The Color blend mode preserves the luma of the bottom layer, while adopting the hue and chroma of the top layer."), opacity: 0.5)
    }
    .padding()
}
