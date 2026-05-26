//
//  TitanicView.swift
//  Parallel Titanic CSV
//
//  Created by JIHYEON YOON on 5/22/26.
//

import SwiftUI

struct TitanicView: View {
    @State private var vm = TitanicViewModel()
    var body: some View {
        NavigationStack {
            Group {
                if vm.isLoading {
                    ProgressView("Loading Titanic data...")
                } else {
                    List(vm.passengers) { passenger in
                        VStack(alignment: .leading) {
                            Text(passenger.name)
                                .font(.headline)
                            let pcalssString = passenger.pclass != 0 ? "Class \(passenger.pclass) | " : ""
                            Text(pcalssString + passenger.sex.capitalized)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                            
                            if passenger.age != 0 {
                                Text("Age: \(passenger.age)")
                            }
                            Text(passenger.survived ? "Survived" : "Did not survive")
                                .bold()
                                .foregroundStyle(passenger.survived ? .green : .red)
                        }
                    }
                }
            }
            .navigationTitle("Titanic Passengers")
            .task {
                await vm.fetchTitanicData()
            }
        }
    }
}

#Preview {
    TitanicView()
}
