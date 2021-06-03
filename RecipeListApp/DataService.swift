//
//  DataService.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import Foundation

class DataService {
    
   static  func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get path to local JSON file
       let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathstring is not nil, otherwise

    guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            //Decode with json decoder
            let decoder = JSONDecoder()
            
           let recipeData = try decoder.decode([Recipe].self, from: data)
            //Add the unique ID
            
            for r in recipeData {
                r.id = UUID()
                
                for i in r.ingredients {
                    i.id = UUID()
                }
            }
            
            return recipeData

        }catch {
            print(error)
        }
        
        return [Recipe]()
        
        
        
        
    }
}
