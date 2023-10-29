//
//  FavouriteView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

struct FavouriteView: View
{
    @Binding public var countries:[Country]
    
    let color1=Color("color1")
    
    var body: some View{
        
        
        
        NavigationStack{
            VStack(alignment: .leading)
            {
//                HStack{
//                    Text("Favourites").font(.largeTitle)
//                        .bold()
//                        .fontWeight(.black).foregroundColor(color1)
//                        .padding()
//                    Spacer()
//                }
                
                ScrollView
                {
                    
                    ForEach($countries)
                    {
                        $country in
                        
                        ForEach($country.Recipes, id: \.id)
                        {
                            $recipe in
                            
                            if(recipe.favourite)
                            {
                                
                                
                                NavigationLink(destination: RecipeView(recipe: recipe, country: country.name, countries: $countries))
                                {
                                    
                                    ZStack(alignment: .bottomLeading)
                                    {
                                        
                                        //Image
                                        Image(recipe.imageName).resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 351, height: 174)
                                            .clipped()
                                            .cornerRadius(25)
                                            .padding(.top, 5).shadow(color: .gray, radius: 1,y:5)
                                        
                                        Rectangle().foregroundColor(.clear).frame(width: 351, height: 174)
                                            .background(LinearGradient(stops:
                                                                        [
                                                                            Gradient.Stop(color: .black.opacity(0), location: 0.40),
                                                                            Gradient.Stop(color: .black.opacity(0), location: 0.44),
                                                                            Gradient.Stop(color: .black.opacity(0.7), location: 1.00),
                                                                        ],
                                                                       startPoint: UnitPoint(x: 0.5, y: 0),
                                                                       endPoint: UnitPoint(x: 0.5, y: 1))).cornerRadius(25)
                                        
                                        
                                        VStack (alignment: .leading)
                                        {
                                            
                                            Text(recipe.name).font(.title).bold()
                                            
                                            
                                            HStack
                                            {
                                                Image(systemName: "clock")
                                                Text("\(recipe.time) min")
                                                Spacer(minLength: 5)
                                                
                                                
                                                Button (action:
                                                            {
                                                    
                                                    recipe.favourite.toggle()
                                                    
                                                    
                                                }, label: {
                                                    Image(systemName:
                                                            recipe.favourite ? "heart.circle.fill" : "heart.circle")
                                                    .bold ()
                                                    .font(.system(size: 25))
                                                    
                                                    
                                                })
                                                
                                                
                                                
                                            }
                                        }
                                        .foregroundColor(.white).shadow(radius: 30).padding()
                                    }.padding()
                                        .padding(.bottom, -28)
                                }
                            }
                        }
                    }
                }.navigationBarTitle("Favourites", displayMode: .large)

            }
        }
    }
}



//#Preview
//{
//    FavouriteView(countries: .constant([]))
//}




//                ScrollView
//                {
//                    //Using an innested for each I can filter which of all the recipes are the favourite ones
//                    ForEach($data.countries)
//                    {
//                        country in
//
//                        ForEach(country.Recipes)
//                        {
//                            $recipe in
//                            if (recipe.favourite)
//                            {
//                                ZStack(alignment: .bottomLeading)
//                                {
//                                    Image(recipe.imageName).resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .frame(width: 351, height: 174)
//                                        .clipped()
//                                        .cornerRadius(25)
//                                        .padding(.top, 5).shadow(color: .gray, radius: 1,y:5)
//                                    VStack(alignment: .leading)
//                                    {
//                                        Text(recipe.name).font(.title).bold()
//
//                                        HStack
//                                        {
//
//                                        }
//
//                                    }.foregroundColor(.white).padding()
//                                }
//                            }
//                        }
//
//                    }
//                }
//
//            }
//
//
//    }
//}
//
//
//
////#Preview
////{
////    FavouriteView(data:WorldPanApp().$data)
////}
////
//
