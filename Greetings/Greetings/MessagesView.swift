//
//  MessagesView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI

struct MessagesView: View {
    let messages = [DataItemModel(text: "Hello there!", color: .green), DataItemModel(text: "Welcome to Swift Programming", color: .gray), DataItemModel(text: "Are you ready to", color: .yellow), DataItemModel(text: "start exploring?", color: .red), DataItemModel(text: "Boom", color: .purple)]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
