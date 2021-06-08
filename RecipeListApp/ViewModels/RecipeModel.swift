//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import Foundation


class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
    
    
    
    
    static func getPortion(ingredient:Ingredient, recipServings:Int, targetServings:Int) -> String {
        
        // Get a single serving by multiplying denominator by the reipe serevings
        
        // Get a target portion by multiplying numerator by targe servings
        
        // Reduce fractions by grestest cmmon divider
        
        // Get the whole portion if numerator > demonator
        
        // Express the reminder as a fraction
        
        return String(targetServings)
    }
}
