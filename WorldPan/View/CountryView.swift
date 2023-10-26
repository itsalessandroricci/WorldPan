//
//  CountryView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 23/10/23.
//

import SwiftUI

struct CountryView: View
{
    
    @State var selection: String = "All"
    @State public  var isModalShowed:Bool=false
    @State public  var time:Int = -1
    @State public  var difficulty:Int = -1
    @State public  var test:Int = 0

    @Binding public var countries:[Country]
    
    let color1=Color("color1")

    var body: some View{
    
       
            ZStack{
                
                HStack{
                    Text(selection).font(.largeTitle).bold().padding().foregroundColor(color1).fontWeight(.black)
                    
                    
                    Spacer()
                    
                    Button(action:
                            {
                        isModalShowed=true
                    })
                    {
                        
                        Image(systemName: "line.3.horizontal.decrease.circle").foregroundColor(color1)
                        //                    .padding(.leading, 110.0)
                            .font(.system(size: 28))
                        
                        
                    }.padding(.trailing, 8.0).sheet(isPresented:$isModalShowed)
                    {
                        FilterView(difficulty: $difficulty, time:$time)
                    }
                }
            }
            
            
            VStack(alignment: .leading)
            {
                
                
                
                
                ScrollView()
                {
                    // it has to be possible to visualize the recipes with or without the filters
                    ForEach($countries)
                    {
                        $country in
                        if(country.name==selection || selection=="All")
                        {
                            ForEach($country.Recipes, id: \.id)
                            {
                                $recipe in
                                if(recipe.difficulty == difficulty || difficulty == -1)
                                {
                                    if(recipe.time == time || time == -1)
                                    {
                                        NavigationLink(destination: RecipeView(recipe: recipe, country: selection,countries:$countries))
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
                                                                                [   Gradient.Stop(color: .black.opacity(0), location: 0.40),
                                                                                    Gradient.Stop(color: .black.opacity(0), location: 0.44),
                                                                                    Gradient.Stop(color: .black.opacity(0.7), location: 1.00),
                                                                                ],
                                                                               startPoint: UnitPoint(x: 0.5, y: 0),
                                                                               endPoint: UnitPoint(x: 0.5, y: 1))).cornerRadius(25)
                                                
                                                
                                                VStack (alignment: .leading)
                                                {
                                                    //Team Name
                                                    Text(recipe.name).font(.title).bold()
                                                    
                                                    //Learners
                                                    HStack
                                                    {
                                                        Image(systemName: "clock")
                                                        Text("\(recipe.time) min")
                                                        Spacer(minLength: 5)
                                                        
                                                        //Favourite button
                                                            Button (action:
                                                             {
                                                               
                                                                recipe.favourite.toggle()
                                                                print(recipe.favourite)
                                                                test = test+1
                                                                
                                                             }, label: {
                                                             Image(systemName:
                                                             recipe.favourite ? "heart.circle.fill" : "heart.circle")
                                                             .bold ()
                                                             
                                                    
                                                             })
                                                         Text(String(test))
                                                                .hidden()
                                                        }
                                                    }.foregroundColor(.white).shadow(radius: 30).padding()
                                                
                                            }.padding()
                                            .padding(.vertical, -12)}
                                    }
                                }
                            }
                        }
                        
                    }
                    
                    
                }
                .offset(x: 5.0)
            }
        }
    }

//
//#Preview {
//    
//    CountryView()
//}
//
//
