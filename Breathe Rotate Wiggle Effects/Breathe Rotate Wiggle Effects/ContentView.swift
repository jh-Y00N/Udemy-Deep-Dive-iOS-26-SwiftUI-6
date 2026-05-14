//
//  ContentView.swift
//  Breathe Rotate Wiggle Effects
//
//  Created by JIHYEON YOON on 5/13/26.
//

import SwiftUI

struct ContentView: View {
    let symbols = ["leaf.arrow.trianglehead.clockwise", "square.and.arrow.up", "accessibility"]
    @State private var index = 0
    var currentSymbol: String {
        symbols[index]
    }
    
    @State private var breathe = false
    @State private var rotate = false
    @State private var wiggle = false
    
    var body: some View {
        VStack {
            Form {
                Section("Breathe") {
                    Button("Breathe") {
                        breathe.toggle()
                    }
                    HStack {
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.breathe.pulse.byLayer, value: breathe)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.breathe.pulse.wholeSymbol, value: breathe)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.breathe.plain, value: breathe)
                    }
                }
                Section("Rotate") {
                    Button("Rotate") {
                        rotate.toggle()
                    }
                    HStack {
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.rotate.counterClockwise.wholeSymbol, value: rotate)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.rotate.counterClockwise.byLayer, value: rotate)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.rotate.clockwise.wholeSymbol, value: rotate)
                    }
                }
                Section("Wiggle") {
                    Button("Wiggle") {
                        wiggle.toggle()
                    }
                    HStack {
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.wiggle.backward.byLayer, value: wiggle)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.wiggle.left.byLayer, value: wiggle)
                        SFSymbolView(name: currentSymbol)
                            .symbolEffect(.wiggle.right.wholeSymbol, value: wiggle)
                    }
                }
            }
        }
        Button("Change Symbol") {
            index += 1
            index = index % symbols.count
        }
    }
}

#Preview {
    ContentView()
}
