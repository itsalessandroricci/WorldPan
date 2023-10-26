//
//  InstructionsView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//

import SwiftUI

struct InstructionsView: View
{
    @State public var recipe:Recipe
    
    
    var body: some View
    {
        
        VStack
        {
            ForEach(recipe.instruction)
            {
                
                instruction in
                
                    
                    ZStack
                    {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 372, height: 150)
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 4)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 372, height: 150)
                            .background(Color.color1.opacity(0.4))
                            .cornerRadius(12)
                        
                        
                        
                        VStack(alignment: .leading)
                        {
                            Text("STEP \(instruction.number)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 268, height: 18, alignment: .topLeading)
                            
                            
                            Text(instruction.title)
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .frame(width: 322, height: 10, alignment: .topLeading)
                            
                            Text(instruction.description)
                                .fontWeight(.light)
                            
                                .foregroundColor(.black)
                                .frame(width: 332, height: 94, alignment: .topLeading)
                                .padding(.top, 5)
                        }
                        
                    }
                    .padding(.vertical, 8)
                }
        }
    }
}
            
            /*
            
        
            
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 4)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.color1.opacity(0.4))
                    .cornerRadius(12)
                   
                
                
                VStack(alignment: .leading){
                    //                TITOLO
                    Text("STEP 1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 268, height: 18, alignment: .topLeading)
                    
                    
                    
                    //                SOTTOINTESTAZIONE
                    Text("Cook the pasta")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .frame(width: 322, height: 10, alignment: .topLeading)
                    //                DESCRIZIONE
                    Text("Begin by cooking the pasta in a large pot of salted water following the package instructions. Make sure to cook it al dente.")
                        .fontWeight(.light)
                     
                        .foregroundColor(.black)
                      .frame(width: 332, height: 94, alignment: .topLeading)
                      .padding(.top, 5)
                }
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 4)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.color1.opacity(0.4))
                    .cornerRadius(12)
                   
                
                
                VStack(alignment: .leading){
                    //                TITOLO
                    Text("STEP 1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 268, height: 18, alignment: .topLeading)
                    
                    
                    
                    //                SOTTOINTESTAZIONE
                    Text("Cook the pasta")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .frame(width: 322, height: 10, alignment: .topLeading)
                    //                DESCRIZIONE
                    Text("Begin by cooking the pasta in a large pot of salted water following the package instructions. Make sure to cook it al dente.")
                        .fontWeight(.light)
                     
                        .foregroundColor(.black)
                      .frame(width: 332, height: 94, alignment: .topLeading)
                      .padding(.top, 5)
                }
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 4)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.color1.opacity(0.4))
                    .cornerRadius(12)
                   
                
                
                VStack(alignment: .leading){
                    //                TITOLO
                    Text("STEP 1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 268, height: 18, alignment: .topLeading)
                    
                    
                    
                    //                SOTTOINTESTAZIONE
                    Text("Cook the pasta")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .frame(width: 322, height: 10, alignment: .topLeading)
                    //                DESCRIZIONE
                    Text("Begin by cooking the pasta in a large pot of salted water following the package instructions. Make sure to cook it al dente.")
                        .fontWeight(.light)
                     
                        .foregroundColor(.black)
                      .frame(width: 332, height: 94, alignment: .topLeading)
                      .padding(.top, 5)
                }
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 4)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 372, height: 150)
                    .background(Color.color1.opacity(0.4))
                    .cornerRadius(12)
                   
                
                
                VStack(alignment: .leading){
                    //                STEP
                    Text("STEP 1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 268, height: 18, alignment: .topLeading)
                    
                    
                    
                    //                TITLE
                    Text("Cook the pasta")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .frame(width: 322, height: 10, alignment: .topLeading)
                    //               DESCRIPTION
                    Text("Begin by cooking the pasta in a large pot of salted water following the package instructions. Make sure to cook it al dente.")
                        .fontWeight(.light)
                     
                        .foregroundColor(.black)
                      .frame(width: 332, height: 94, alignment: .topLeading)
                      .padding(.top, 5)
                }
            }
            
        }
        
    }
}
             */
             
/*
 #Preview
 {
 InstructionsView()
 }
 */
