//
//  MessagesView.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/12/26.
//

import SwiftUI

struct MessagesView: View {
    let messages = [DataItemModel(text: "Hello there!", color: .myGreen), DataItemModel(text: "Welcome to Swift Programming", color: .myGray), DataItemModel(text: "Are you ready to", color: .myYellow), DataItemModel(text: "start exploring?", color: .myRed), DataItemModel(text: "Boom", color: .myPurple)]
    
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
