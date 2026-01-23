//
//  GreetingsTip.swift
//  Greetings
//
//  Created by JIHYEON YOON on 1/23/26.
//

import SwiftUI
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on text and discription")
    }
    var message: Text? {
        Text("Text will be randomly generated and observe nice animations")
    }
    var asset: Image? {
        Image(systemName: "figure.walk.motion")
    }
}
