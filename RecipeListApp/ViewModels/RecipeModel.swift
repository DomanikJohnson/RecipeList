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
}
