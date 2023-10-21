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
                
                ZStack{
                    
                    Image("carbonara")
                    
                    VStack {
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
                        }.padding(.leading, 14.0)
                        
                        Text("Creamy Roman pasta dish with eggs, Pecorino cheese, guanciale, and black pepper, a culinary masterpiece.")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .frame(width: 362, height: 70, alignment: .topLeading)
                        
                        
                        HStack{
                            HStack{
                                VStack(alignment: .leading, spacing: 10){
                                    Image(systemName: "frying.pan.fill")
                                        .foregroundColor(.color1)
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.color1)
                                }
                                VStack(alignment: .leading, spacing: 10){
                                    Text("Easy")
                                        .font(Font.custom("SF Pro", size: 15))
                                        .foregroundColor(.black)
                                    Text("2")
                                        .font(Font.custom("SF Pro", size: 15))
                                        .foregroundColor(.black)
                                }
                            }
                            Spacer()
                            HStack{
                                VStack(alignment: .center, spacing: 10) {
                                    Image(systemName: "flame.fill")
                                        .foregroundColor(.color1)
                                    //                                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    Image(systemName: "laurel.leading")
                                        .foregroundColor(.color1)
                                }
                                
                                VStack(alignment: .leading, spacing: 10)
                                {
                                    Text("565 Kcal")
                                        .font(Font.custom("SF Pro", size: 15))
                                        .foregroundColor(.black)
                                    Text("65,3 Carbs")
                                        .font(Font.custom("SF Pro", size: 15))
                                        .foregroundColor(.black)
                                }
                                
                                
                            }
                            
                        }.padding(.horizontal, 45)
                        
                        Picker(selection: .constant(1), label: Text("Picker")) {
                            Text("Ingredients").tag(1)
                            Text("Instructions").tag(2)
                            
                        }
                        .pickerStyle(.segmented)
                        .padding()
                        
                    }
                    .background(.white, in: .rect(cornerRadius: 15))
                    .offset(y: 150.0)
                    
                    
                }
                
                
            }
        
        
    }
}

#Preview {
    RecipeView()
}
