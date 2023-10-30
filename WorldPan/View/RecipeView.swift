//
//  RecipeView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

//import SwiftUI
//
//struct RecipeView: View {
//    
//    
//    // SEGMENTED CONTROL OPTIONS
//    
//    @State private var selectedSegment = 0
//    @State public var recipe:Recipe
//    @State public var country:String
//    @Binding public var countries:[Country]
//    
//    var body: some View {
//            ScrollView{
//             
//            
//                ZStack{
//                    
//                    Image(recipe.imageName)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 394, height: 264)
//                        .clipped()
//                    
//                    VStack {
//                        HStack {
//                            Text(recipe.name)
//                                .font(.title)
//                                .bold()
//                                .foregroundColor(.black)
//                            Spacer()
//                            HStack {
//                                Image(systemName: "timer")
//                                Text(String(recipe.time) + " min")
//                            }.padding()
//                        }.padding(.leading, 14.0)
//                     
//                            Text(recipe.description)
//                                .fontWeight(.regular)
//                                .foregroundColor(.black)
//                                .frame(width: 362, height: 70, alignment: .topLeading)
//                       
//                        
//                        HStack{
//                            HStack{
//                                VStack(alignment: .leading, spacing: 10){
//                                    Image(systemName: "frying.pan.fill")
//                                        .foregroundColor(.color1)
//                                    
//                                }
//                                VStack(alignment: .leading, spacing: 10){
//                                    if(recipe.difficulty==0)
//                                    {
//                                        Text("Easy").font(Font.custom("SF Pro", size: 15))
//                                            .foregroundColor(.black)
//                                    }
//                                    if(recipe.difficulty==1)
//                                    {
//                                        Text("Medium").font(Font.custom("SF Pro", size: 15))
//                                            .foregroundColor(.black)
//                                    }
//                                    if(recipe.difficulty==2)
//                                    {
//                                        Text("Difficult").font(Font.custom("SF Pro", size: 15))
//                                            .foregroundColor(.black)
//                                    }
//                                    
//                                    
//                                }
//                            }
//                            Spacer()
//                            HStack{
//                                VStack(alignment: .center, spacing: 10) {
//                                    Image(systemName: "person.2.fill")
//                                        .foregroundColor(.color1)
//                                    //                                        .shadow(color: .black, radius: 10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0)
//                                   
//                                }
//                                
//                                VStack(alignment: .leading, spacing: 10)
//                                {
//                                    Text("\(recipe.servings)")
//                                        .font(Font.custom("SF Pro", size: 15))
//                                        .foregroundColor(.black)
//                                                            }
//                                
//                                
//                            }
//                            
//                        }.padding(.horizontal, 45)
//                        
//                        
//                        
//                        
//                    }
//                    .background(.white, in: .rect(cornerRadius: 15))
//                    .offset(y: 190.0)
//                    
//                    
//                }
//                
//                // SEGMENTED CONTROL
//                
//                VStack {
//                    Picker("", selection: $selectedSegment) {
//                        Text("Ingredients").tag(0)
//                        Text("Instructions").tag(1)
//                    }
//                    .pickerStyle(SegmentedPickerStyle())
//                    .padding()
//                    
//                    
//                    
//                    VStack {
//                        
//                        //                        INGREDIENTS
//                        if selectedSegment == 0 {
//                            
//                            IngredientsView(recipe: recipe, country: country, countries: $countries)
//                            
//                        }
//                        
//                        //                    INSTRUCTIONS
//                        ;  if selectedSegment == 1 {
//                            
//                            InstructionsView(recipe: recipe)
//                            
//                        }
//                    }
//                    //                    .padding(.bottom, 200.0)
//                    .frame(width: 0.0)
//                    
//                }
//                .padding(.top, 145.0)
//                
//                //                NAVIGATION TITLE
//            
//            } .navigationBarTitle(recipe.name, displayMode: .inline)
//                
////                .toolbarBackground(Color.color1,for: .navigationBar)
////                .navigationBarItems(trailing: Button("Back") {
////                               // Azione del pulsante
////                           })
//        }
//        
//            
//    }
//
////#Preview {
////    RecipeView()
////}


//#Preview {
//    RecipeView()
//}


import SwiftUI

struct RecipeView: View {


    // SEGMENTED CONTROL OPTIONS

    @State private var selectedSegment = 0
    @State public var recipe:Recipe
    @State public var country:String
    @Binding public var countries:[Country]

    var body: some View {
            ScrollView{
  
                VStack {
                        Image(recipe.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 394, height: 204)
                            .clipped()
                    
                    HStack{
                        Text(recipe.description)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .frame(width: 362, height: 70, alignment: .topLeading)
                    }
                    .padding(.top, 10)
                    

                        HStack{
                            HStack{
                                VStack(alignment: .leading, spacing: 10){
                                    Image(systemName: "frying.pan.fill")
                                        .foregroundColor(.color1)

                                }
                                VStack(alignment: .leading, spacing: 10){
                                    if(recipe.difficulty==0)
                                    {
                                        Text("Easy").font(Font.custom("SF Pro", size: 15))
                                            .foregroundColor(.black)
                                    }
                                    if(recipe.difficulty==1)
                                    {
                                        Text("Medium").font(Font.custom("SF Pro", size: 15))
                                            .foregroundColor(.black)
                                    }
                                    if(recipe.difficulty==2)
                                    {
                                        Text("Difficult").font(Font.custom("SF Pro", size: 15))
                                            .foregroundColor(.black)
                                    }


                                }
                            }
                            Spacer()
                            HStack{
                                VStack(alignment: .center, spacing: 10) {
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.color1)
                                    //                                        .shadow(color: .black, radius: 10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0)

                                }

                                VStack(alignment: .leading, spacing: 10)
                                {
                                    Text("\(recipe.servings)")
                                        .font(Font.custom("SF Pro", size: 15))
                                        .foregroundColor(.black)
                                                            }


                            }

                        }.padding(.horizontal, 45)
                            .padding(.top, 5)



                    }





                // SEGMENTED CONTROL

                VStack {
                    Picker("", selection: $selectedSegment) {
                        Text("Ingredients").tag(0)
                        Text("Instructions").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()



                    VStack {

                        //                        INGREDIENTS
                        if selectedSegment == 0 {

                            IngredientsView(recipe: recipe, country: country, countries: $countries)

                        }

                        //                    INSTRUCTIONS
                        ;  if selectedSegment == 1 {

                            InstructionsView(recipe: recipe)

                        }
                    }
                    //                    .padding(.bottom, 200.0)
                    .frame(width: 0.0)

                }
                .padding(.top, 5.0)

                //                NAVIGATION TITLE

            } .navigationBarTitle(recipe.name, displayMode: .large)

//                .toolbarBackground(Color.color1,for: .navigationBar)
//                .navigationBarItems(trailing: Button("Back") {
//                               // Azione del pulsante
//                           })
        }


    }

//#Preview {
//    RecipeView()
//}
