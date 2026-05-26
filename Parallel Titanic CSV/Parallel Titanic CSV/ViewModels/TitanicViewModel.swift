//
//  TitanicViewModel.swift
//  Parallel Titanic CSV
//
//  Created by JIHYEON YOON on 5/26/26.
//

import Foundation

@Observable
class TitanicViewModel {
    var passengers: [Passenger] = []
    var isLoading = false
    
    @MainActor
    func fetchTitanicData() async {
        guard let url = URL(string: "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv") else {
            print("Invalid URL")
            return
        }
        isLoading = true
        
        defer {
            isLoading = false
        }
        
        do {
            var firstLine = true
            var parsedPassengers: [Passenger] = []
            for try await line in url.lines {
                if firstLine {
                    firstLine = false
                    continue
                }
                let columns = parseCSVLine(line: line)
                guard columns.count >= 6 else { continue }
                let id = Int(columns[0]) ?? 0
                let survived = columns[1] == "1"
                let pclass = Int(columns[2]) ?? 0
                let name = columns[3]
                let sex = columns[4]
                let age = Int(columns[5]) ?? 0
                
                let passenger = Passenger(id: id, survived: survived, pclass: pclass, name: name, sex: sex, age: age)
                parsedPassengers.append(passenger)
            }
            passengers = parsedPassengers
        } catch {
            print("Error fetching Titanic data: \(error)")
        }
    }
    
    private func parseCSVLine(line: String) -> [String] {
        var result = [String]()
        var current = ""
        var insideQuotes = false
        
        for char in line {
            if char == "\"" {
                insideQuotes.toggle()
            } else if char == ",", !insideQuotes {
                result.append(current.trimmingCharacters(in: .whitespaces))
                current = ""
            } else {
                current.append(char)
            }
        }
        return result
    }
}
