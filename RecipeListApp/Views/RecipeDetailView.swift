//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    @State var portion: Int = 2
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
            
            
            
            // MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                
            //MARK: Picker
                
                Picker("", selection: $portion) {
                    Text("2").tag(2)
                    Text("4").tag(4)
                    Text("6").tag(6)
                    Text("8").tag(8)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 160)
                
            // MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.bottom, .top], 5)
                
                ForEach(recipe.ingredients) { item in
                    Text("- " + RecipeModel.getPortion(ingredient: item, recipServings: recipe.servings, targetServings: portion) + " " + item.name)
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
