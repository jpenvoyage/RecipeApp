//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Joao Leal on 3/26/24.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading) {
                    
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading){
                        Text("Ingredients")
                            .font(.headline)
                            .padding([.bottom, .top], 5)
                        ForEach(recipe.ingredients, id: \.self) { item in
                            Text("- " + item)
                        }
                        
                    }
                    .padding(.horizontal)
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Directions")
                            .font(.headline)
                            .padding([.bottom, .top], 5)
                        ForEach(0..<recipe.directions.count, id: \.self) { index in
                            Text(String(index) + ". " + recipe.directions[index])
                                .padding()
                        }
                    }
                    .padding(.horizontal)
                }.navigationTitle(recipe.name)
            }
        }
    }
}