//
//  DataItemModel.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/10/26.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
