//
//  RecipeView.swift
//  Recipe
//
//  Created by JIHYEON YOON on 6/14/26.
//

import SwiftUI

struct RecipeView: View {
//    @StateObject var reipeViewModel = RecipeViewModel()
    var reipeViewModel = RecipeViewModel()  // iOS 17
    var body: some View {
//        NavigationView {
//            List(reipeViewModel.recipeModels) { item in
//                NavigationLink {
//                    ShowRecipeView(
//                        recipe: item.recipe,
//                        imageName: item.recipeImage,
//                        recipeURL: item.recipeURL
//                    ).navigationTitle("").navigationBarTitleDisplayMode(.inline)
//                } label: {
//                    ListItemView(
//                        name: item.name,
//                        caloriesPer100Grams: item.caloriesPer100Grams,
//                        recipeImage: item.recipeImage
//                    )
//                }.navigationTitle("Recipes")
//            }
//        }
        // iOS 17
        NavigationStack {
            List(reipeViewModel.recipeModels) { item in
                NavigationLink {
                    ShowRecipeView(
                        recipe: item.recipe,
                        imageName: item.recipeImage,
                        recipeURL: item.recipeURL
                    )
                } label: {
                    ListItemView(
                        name: item.name,
                        caloriesPer100Grams: item.caloriesPer100Grams,
                        recipeImage: item.recipeImage
                    )
                }.navigationTitle("Recipes")
            }
        }
    }
}

#Preview {
    RecipeView()
}
