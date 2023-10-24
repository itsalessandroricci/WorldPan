//
//  FavouriteView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

struct FavouriteView: View
{
    @Binding var data: DataSet
    let color1=Color("color1")
    
    var body: some View{
        VStack(alignment: .leading)
        {
            Text("Favourites").font(.largeTitle)
                .bold()
                .fontWeight(.black).padding().foregroundColor(color1)
            
            ScrollView
            {
                //Using an innested for each I can filter which of all the recipes are the favourite ones
                ForEach($data.countries)
                {
                    country in
                    ForEach(country.Recipes)
                    {
                        $recipe in
                        if (recipe.favourite)
                        {
                            ZStack(alignment: .bottomLeading)
                            {
                                Image(recipe.imageName).resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 351, height: 174)
                                    .clipped()
                                    .cornerRadius(25)
                                    .padding(.top, 5).shadow(color: .gray, radius: 1,y:5)
                                VStack(alignment: .leading)
                                {
                                    Text(recipe.name).font(.title).bold()
                                    
                                    HStack
                                    {
                                        
                                    }
                                    
                                }.foregroundColor(.white).padding()
                            }
                        }
                    }
                    
                }
            }
            
        }
       
               
    }
}
    

/*
#Preview
{
    FavouriteView(data:WorldPanApp().$data)
}

*/
