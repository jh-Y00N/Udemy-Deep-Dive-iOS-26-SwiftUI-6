//
//  BlendModel.swift
//  Exploring Blend Modes
//
//  Created by JIHYEON YOON on 3/27/26.
//

import SwiftUI

struct BlendModel: Identifiable {
    let id = UUID()
    let blendMode: BlendMode
    let title: String
    let describe: String
}
