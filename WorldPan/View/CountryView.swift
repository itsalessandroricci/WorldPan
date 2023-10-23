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
    @Binding public var data: DataSet
    
    let color1=Color("color1")

    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack
            {
                Text(selection).font(.largeTitle).bold().padding().foregroundColor(color1).fontWeight(.black)
             
               Button(action:
                {
                    isModalShowed=true
                })
                {
                    
                    Image(systemName: "line.3.horizontal.decrease.circle").foregroundColor(color1)
                        .padding(.leading, 250.0)

                    
                }.sheet(isPresented:$isModalShowed)
                {
                    FilterView(difficulty: $difficulty, time:$time)
                }
            }
            
                
                ScrollView
                {
                    // it has to be possible to visualize the recipes with or without the filters
                    ForEach($data.countries)
                    {
                        $country in
                    if(country.name==selection || selection=="All")
                        {
                        ForEach($country.Recipes)
                        {
                            $recipe in
                            if(recipe.difficulty == difficulty || difficulty == -1)
                            {
                                if(recipe.time == time || time == -1)
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
                                                Button (action: {recipe.favourite = true } )
                                                {
                                                    Image(systemName: "heart.circle")
                                                }
                                            }
                                        }.foregroundColor(.white).shadow(radius: 30).padding()
                                    }.padding()
                                }
                            }
                        }
                    }
                        
                    }
                    
                    
                }
            
        }
    }
}

#Preview {
    
    CountryView(data:WorldPanApp().$data)
}

