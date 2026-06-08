//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by JIHYEON YOON on 5/27/26.
//

import Foundation

@Observable
class WeatherViewModel {
    var city = ""
    var weather: WeatherResponse?
    var isLoading = false
    var errorMessage: String?
    
    private let apiKey = "353ba8e2d40c4217a25231913260106"
    
    private func fetchWeatherData(for city: String) async throws -> WeatherResponse {
        let urlString = "https://api.weatherapi.com/v1/current.json?key=\(apiKey)&q=\(city)&aqi=no"
        guard let url = URL(string: urlString) else {
            throw WeatherError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw WeatherError.unknown
        }
        guard httpResponse.statusCode == 200 else {
            throw WeatherError.requestFailed(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(WeatherResponse.self, from: data)
        } catch {
            throw WeatherError.decodingFailed
        }
    }
    
    @MainActor
    func fetch() async {
        do {
            weather = try await fetchWeatherData(for: city)
            errorMessage = nil
        } catch {
            if let weatherError = error as? WeatherError {
                errorMessage = weatherError.localizedDescription
            } else {
                errorMessage = "Unexpected error: \(error.localizedDescription)"
            }
            weather = nil
        }
    }
}
