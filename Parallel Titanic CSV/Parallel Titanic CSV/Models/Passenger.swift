//
//  Passenger.swift
//  Parallel Titanic CSV
//
//  Created by JIHYEON YOON on 5/22/26.
//

import Foundation

struct Passenger: Identifiable {
    let id: Int
    let survived: Bool
    let pclass: Int
    let name: String
    let sex: String
    let age: Int
}
