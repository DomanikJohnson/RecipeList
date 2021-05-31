//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
            
            
            
            // MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            // MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.bottom, .top], 5)
                
                ForEach(recipe.ingredients, id: \.self) { item in
                    Text("- " + item)
                }
            }
            .padding(.horizontal)
            
                // MARK: Divider
                Divider()
            
            // MARK: Directions
                VStack(alignment: .leading){
                Text("Directions")
                    .font(.headline)
                    .padding(.bottom)
                    
                
                ForEach(recipe.directions, id: \.self) { item in
                    Text(item)
                }
                }
                .padding(.horizontal)
         }
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //Create a dummy recipe and pass it into the etail view so ethat we can seee a preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
