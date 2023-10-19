//
//  RecipeView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

struct RecipeView: View {
    
    
    var body: some View {
        NavigationStack{
            VStack{
                ZStack(alignment: .bottomLeading){
                    Image("carbonara").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 394, height: 277)
                        .clipped()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 62)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(.top, 150.0)
                    
                    HStack {
                        Text("Carbonara")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                        Spacer()
                        HStack {
                            Image(systemName: "timer")
                            Text("20 min")
                        }.padding()
                       
                    }
                    .padding(.leading, 14.0)
                   
                }
                Text("Creamy Roman pasta dish with eggs, Pecorino cheese, guanciale, and black pepper, a culinary masterpiece.")
                    .fontWeight(.regular)
                .foregroundColor(.black)
                .frame(width: 362, height: 70, alignment: .topLeading)
                VStack{
                    HStack{
                        Image("hat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 29, height: 29)
                            .clipped()
                        Text("Easy")
                            .font(Font.custom("SF Pro", size: 15))
                            .foregroundColor(.black)
                        
                Text("                  ")
                       
                        Image("hat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 29, height: 29)
                            .clipped()
                        Text("Easy")
                            .font(Font.custom("SF Pro", size: 15))
                            .foregroundColor(.black)
                    }
                    VStack{
                        HStack{
                            Image("hat")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 29, height: 29)
                                .clipped()
                            Text("Easy")
                                .font(Font.custom("SF Pro", size: 15))
                                .foregroundColor(.black)
                            Text("                  ")
                            Image("hat")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 29, height: 29)
                                .clipped()
                            Text("Easy")
                                .font(Font.custom("SF Pro", size: 15))
                                .foregroundColor(.black)
                        }
                    }
                }
               
            }
            .padding(.bottom, 300.0)
        }
//.navigationDestination(item: <#T##Binding<Optional<Hashable>>#>, destination: <#T##(Hashable) -> View#>)
        
    }
}

#Preview {
    RecipeView()
}
