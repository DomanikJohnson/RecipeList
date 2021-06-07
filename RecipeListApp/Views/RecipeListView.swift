//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct RecipeListView: View {
    // Special property wrapper: This property will be populate with instance you created there
    @EnvironmentObject var model:RecipeModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Recipe List")
                .bold()
                .font(.largeTitle)
                .padding(.top, 20)
            NavigationView {
                ScrollView{
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) { r in
                        
                        // Get pass own view with destination
                        NavigationLink(
                            destination: RecipeDetailView(recipe: r),
                            label: {
                                
                                // MARK: Row Item
                                HStack(alignment: .center, spacing: 20.0) {
                                    Image(r.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    Text(r.name)
                                }
                            })
                        
              
                        
                        
                        }.navigationBarHidden(true)
                        .padding(.leading)
                    }
                }
              
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
