//
//  BlendDemoView.swift
//  Exploring Blend Modes
//
//  Created by JIHYEON YOON on 3/27/26.
//

import SwiftUI

struct BlendDemoView: View {
    @State private var opacity = 0.2
    let blendModels: [BlendModel] = [
        BlendModel(blendMode: .normal, title: "Normal", describe: "This is the standard blend mode which uses the top layer alone, without mixing its colors with the layer beneath it."),
        BlendModel(blendMode: .color, title: "Color", describe: "The Color blend mode preserves the luma of the bottom layer, while adopting the hue and chroma of the top layer."),
        BlendModel(blendMode: .colorBurn, title: "Color Burn", describe: "The Color Burn mode divides the inverted bottom layer by the top layer, and then inverts the result. This darkens the top layer increasing the contrast to reflect the color of the bottom layer. The darker the bottom layer, the more its color is used. Blending with white produces no difference. When top layer contains a homogeneous color, this effect is equivalent to changing the black point to the inverted color."),
        BlendModel(blendMode: .colorDodge, title: "Color Dodge", describe: "The Color Dodge blend mode divides the bottom layer by the inverted top layer. This lightens the bottom layer depending on the value of the top layer: the brighter the top layer, the more its color affects the bottom layer. Blending any color with white gives white. Blending with black does not change the image."),
        BlendModel(blendMode: .darken, title: "Darken", describe: "Darken Only creates a pixel that retains the smallest components of the foreground and background pixels."),
        BlendModel(blendMode: .multiply, title: "Multiply", describe: "Multiply blend mode multiplies the RGB channel numbers for each pixel from the top layer with the values for the corresponding pixel from the bottom layer. The result is always a darker picture; since each value is less than 1, their product will be less than either of the initial values."),
        BlendModel(blendMode: .screen, title: "Screen", describe: "With Screen blend mode the values of the pixels in the two layers are inverted, multiplied, and then inverted again. This yields the opposite effect to multiply, and results in a brighter picture."),
        BlendModel(blendMode: .overlay, title: "Overlay", describe: "Overlay combines Multiply and Screen blend modes. The parts of the top layer where the base layer is light become lighter, the parts where the base layer is dark become darker. Areas where the top layer are mid grey are unaffected. An overlay with the same picture looks like an S-curve."),
        BlendModel(blendMode: .lighten, title: "Lighten", describe: "Lighten Only has the opposite action of Darken Only. It selects the maximum of each component from the foreground and background pixels."),
        BlendModel(blendMode: .softLight, title: "Soft Light", describe: "Soft light is most closely related to Overlay and is only similar to Hard Light by name. Different for every program."),
        BlendModel(blendMode: .hardLight, title: "Hard Light", describe: #"Hard Light is also a combination of Multiply and Screen. Hard Light affects the blend layer's relationship to the base layer in the same way Overlay affects the base layer's relationship to the blend layer. The inverse relationship between Overlay and Hard Light makes them "commuted blend modes""#),
        BlendModel(blendMode: .difference, title: "Difference", describe: "Difference subtracts the bottom layer from the top layer or the other way round, to always get a positive value. Blending with black produces no change, as values for all colors are 0. (The RGB value for black is (0,0,0).) Blending with white inverts the picture."),
        BlendModel(blendMode: .exclusion, title: "Exclusion", describe: "Blending with white inverts the base color values, while blending with black produces no change. However, Blending with 50% gray produces 50% gray."),
        BlendModel(blendMode: .hue, title: "Hue", describe: "The Hue blend mode preserves the luma and chroma of the bottom layer, while adopting the hue of the top layer."),
        BlendModel(blendMode: .saturation, title: "Saturation", describe: "The Saturation blend mode preserves the luma and hue of the bottom layer, while adopting the chroma of the top layer."),
        BlendModel(blendMode: .luminosity, title: "Luminosity", describe: "The Luminosity blend mode preserves the hue and chroma of the bottom layer, while adopting the luma of the top layer."),
        BlendModel(blendMode: .plusLighter, title: "Plus Lighter", describe: "This blend mode simply adds pixel values of one layer with the other."),
        BlendModel(blendMode: .plusDarker, title: "Plus Darker", describe: "This blend mode simply adds pixel values of one layer with the other then subtracts 1 from the end values."),
        BlendModel(blendMode: .destinationOut, title: "Destination Out", describe: "The existing content is kept where it doesn't overlap the new shape."),
        BlendModel(blendMode: .destinationOver, title: "Destination Over", describe: "Content is drawn behind the existing canvas content."),
        BlendModel(blendMode: .sourceAtop, title: "Source Atop", describe: "The Source Atop and Destination Atop composition modes combine the alpha channels of the source and destination images, before blending the source on top of the destination or vice versa.")
    ].sorted { lhs, rhs in
        lhs.title < rhs.title
    }
    var body: some View {
        VStack {
            Text("Blend modes in SwiftUI")
                .font(.title)
            Form {
                ForEach(blendModels) { blendModel in
                    BlendModeView(blendModel: blendModel, opacity: opacity)
                }
            }
            Slider(value: $opacity, in: 0...1)
                .tint(.purple)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    BlendDemoView()
}
