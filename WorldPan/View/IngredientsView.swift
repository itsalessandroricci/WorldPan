//
//  IngredientsView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//

import SwiftUI

struct IngredientsView: View
{
    @State public var recipe:Recipe
    @State public var country:String  // NAME OF COUNTRY NOT COUNTRY OBJECT
    @Binding public var countries:[Country]
    
    var body: some View
    {
        
        VStack
        {
            ForEach(recipe.ingredient)
            {
                ingredient in
                NavigationLink(destination: LocationView(ingredient: ingredient))
                {
                    HStack
                    {
                        Image(ingredient.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 5)
                            .frame(width: 90)
                            .padding()
                        Text(ingredient.name)
                            .bold()
                        Spacer()
                        Text(ingredient.weight)
                        
                        
                    }
                    .frame(width: 372.0, height: 100.0)
                    .padding(.trailing, 50.0)
                }.navigationTitle(country)
            }
        }
    }
}
            
            
            /*
             HStack{
             Image("jowls")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Jowls")
             .bold()
             Spacer()
             Text("60g")
             
             } .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             
             HStack{
             Image("pecorino")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Pecorino")
             .bold()
             Spacer()
             Text("50g")
             
             } .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             
             HStack{
             Image("blackpepper")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Black Pepper")
             .bold()
             Spacer()
             Text("20g")
             
             } .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             
             HStack{
             Image("salt")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Salt")
             .bold()
             Spacer()
             Text("20g")
             
             } .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             
             HStack{
             Image("oil")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Oil")
             .bold()
             Spacer()
             Text("10ml")
             
             } .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             HStack{
             Image("eggs")
             .resizable()
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .aspectRatio(contentMode: .fit)
             .shadow(radius: 5)
             .frame(width: 90)
             .padding()
             Text("Eggs")
             .bold()
             Spacer()
             Text("3")
             }
             .frame(width: 372.0, height: 100.0)
             .padding(.trailing, 50.0)
             
             
             
             
             }
             }
             
             
             
             
             */
            
            

        
        
       

//#Preview {
//    IngredientsView()
//}
