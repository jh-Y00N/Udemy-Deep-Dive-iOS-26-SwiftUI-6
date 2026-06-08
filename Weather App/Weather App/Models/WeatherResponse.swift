//
//  WeatherResponse.swift
//  Weather App
//
//  Created by JIHYEON YOON on 5/26/26.
//

import Foundation

struct WeatherResponse: Codable {
    let location: Location
    let current: Current
}

struct Current: Codable {
    let tempC: Double
    let tempF: Double
    let condition: Condition
    let feelslikeC: Double
    let feelslikeF: Double
    
    enum CodingKeys: String, CodingKey {
        case tempC = "temp_c"
        case tempF = "temp_f"
        case condition
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
    }
}

struct Condition: Codable {
    let text: String
    let icon: String
}

struct Location: Codable {
    let name: String
    let country: String
    let lat, lon: Double
    let localtime: String
}
