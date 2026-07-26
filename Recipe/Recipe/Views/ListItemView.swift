//
//  ListItemView.swift
//  Recipe
//
//  Created by JIHYEON YOON on 6/16/26.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    let imageDim = 70.0
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundStyle(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }.padding()
            Spacer()
            Image(recipeImage)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                )
                .padding(.vertical)
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }.padding(.horizontal)
            .background(Color.black.cornerRadius(10))
    }
}

#Preview {
    ListItemView(name: "Hummus", caloriesPer100Grams: 322, recipeImage: "IMGHummus")
}
