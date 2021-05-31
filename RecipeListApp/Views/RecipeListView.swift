//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct RecipeListView: View {
    // Listen for any published changes
   @ObservedObject var model = RecipeModel()
    
    var body: some View {
        List(model.recipes) { r in
            HStack(alignment: .center, spacing: 20.0) {
                Image(r.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                Text(r.name)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
