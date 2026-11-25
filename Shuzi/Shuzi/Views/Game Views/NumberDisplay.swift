//
//  NumberDisplay.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/17/26.
//

import SwiftUI

struct NumberDisplay: View {
    let number: Option
    let showPinyin: Bool
    let onPlayAudio: () -> Void
    let onTogglePinyin: () -> Void
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var pinyinFont: Font {
        UIDevice.isVisionOS || isIpad ? .largeTitle : .title2
    }
    var numberChineseSize: CGFloat {
        UIDevice.isVisionOS ? 160 : 80
    }
    
    var body: some View {
        GroupBox {
            VStack {
                Text(number.chinese)
                    .font(.system(size: numberChineseSize, weight: .bold))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.indigo, .purple],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                Text(number.pinyin)
                    .font(pinyinFont)
                    .opacity(showPinyin ? 1 : 0)
                Text("what number is this?")
            }
        } label: {
            HStack {
                Button {
                    onTogglePinyin()
                } label: {
                    Label("Pinyin", systemImage: showPinyin ? "eye" : "eye.slash")
                }
                .font(UIDevice.isVisionOS ? .title3 : .subheadline)
                Spacer()
                Button {
                    onPlayAudio()
                } label: {
                    Image(systemName: "volume.2.fill")
                }
            }.buttonStyle(.borderedProminent)
                .tint(.indigo)
        }
    }
}

#if os(visionOS)
#Preview("VisionOS Preview", windowStyle: .automatic) {
    NumberDisplay(
        number: Option.one,
        showPinyin: true,
        onPlayAudio: { print("Play audio") },
        onTogglePinyin: {}
    )
}
#else
#Preview("Default Preview") {
    NumberDisplay(
        number: Option.one,
        showPinyin: true,
        onPlayAudio: { print("Play audio") },
        onTogglePinyin: {}
    )
}
#endif
