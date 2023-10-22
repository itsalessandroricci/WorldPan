//
//  IngredientsView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//

import SwiftUI

struct IngredientsView: View {
    var body: some View {
        
        
        VStack{
            HStack{
                Image("rigatoni")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 5)
                    .frame(width: 90)
                    .padding()
                Text("Rigatoni")
                    .bold()
                Spacer()
                Text("160g")
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
       
        VStack{
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
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
        
        VStack{
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
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
        
        VStack{
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
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
        
        VStack{
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
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
       
        VStack{
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
               
            }
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
        VStack{
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
        }
        .frame(width: 292.0, height: 90.0)
        .padding(.trailing, 130.0)
    }
}
        

        
        
        
        
        
        
       

#Preview {
    IngredientsView()
}
