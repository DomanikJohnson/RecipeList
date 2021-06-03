//
//  Recipe.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import Foundation

class Recipe: Decodable, Identifiable {
    var id:UUID?
    var name:String
    var featured: Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
    
    
    
}

//Identifiagle3 means lets up identfih between each in a loop
//Decodagle lets us decode our object
class Ingredient: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
