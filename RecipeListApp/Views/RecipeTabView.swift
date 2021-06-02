//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 6/1/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("First View")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            Text("List")
                .tabItem {
                    VStack{
                        Image(systemName: "heart.fill")
                        Text("List")
                    }
                }
            
        }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
}
