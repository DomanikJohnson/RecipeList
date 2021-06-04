//
//  RecipeFeatureView.swift
//  RecipeListApp
//
//  Created by Domanik Johnson on 6/3/21.
//

import SwiftUI

struct RecipeFeatureView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0){
            Text("Feature Recipe")
                .bold()
                .padding(.leading)
                .font(.largeTitle)
                .padding(.top, 20)
        
        GeometryReader{ geo in
            TabView {
                ForEach(0..<model.recipes.count ) { index in
                    // Loop thourgh each recipe only show those who featured is ture
                    if model.recipes[index].featured == true {
                        ZStack{
                            // Recipe card
                            Rectangle()
                                .foregroundColor(.white)
                              
                            VStack(spacing: 0){
                                Image(model.recipes[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .clipped()
                                Text(model.recipes[index].name)
                            }
                            
                            
                            
                        }// Applying to ZStack
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(15)
                        // Add shadow to rectangle
                        .shadow(radius: 10)
                   
                        
                    }
                   
                }
               
            }
            // TabviewStyle let  style tab view
            // PageTabViewStyle  lets creaste featurte view
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            // Lets have background for slider in feature view show even with white background
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
            VStack(alignment: .leading, spacing: 10.0){
                Text("Preparaton TIME")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Halhty, dshjflsdfjlk")
            }
            .padding(.bottom)
        }.padding(.leading)
    
    }
}

struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView()
            .environmentObject(RecipeModel())
    }
}
