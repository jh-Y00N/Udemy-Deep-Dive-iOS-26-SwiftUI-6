//
//  StartupViewModel.swift
//  Shuzi
//
//  Created by JIHYEON YOON on 11/7/26.
//

import Foundation

@Observable
@MainActor
class StartupViewModel {
    var proverbModel: ProverbModel?
    var isLoading = true
    var navigateToGame = false
    
    private let urlString = "https://chinese-proverbs.onrender.com/api/proverbs/random"
    
    func fetchQuote() async {
        isLoading = true
        defer { isLoading = false }
        
        guard let url = URL(string: urlString) else {
            proverbModel = ProverbModel.defaultQuote()
            print("Invalid URL, using default quote")
            return
        }
        
        do {
            let request = URLRequest(url: url)
            let (data, _) = try await URLSession.shared.data(for: request)
            let newProverbModel = try JSONDecoder().decode(ProverbModel.self, from: data)
            proverbModel = newProverbModel
        } catch {
            print("Failed to fetch quote, using default. Error: ", error)
            proverbModel = ProverbModel.defaultQuote()
        }
    }
}
