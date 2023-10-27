//
//  DiscoverView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

struct DiscoverView: View
{
    
    let color1=Color("color1")
   
    //Dynamic allocation
    @Binding public var countries:[Country]

    
    let columns: [GridItem] =
    [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View
    {
        NavigationStack
        {
            VStack(alignment: .leading)
            {
                Text("Countries").font(.largeTitle).bold().fontWeight(.black).padding().foregroundColor(color1)
                 
                   
               
                
                ScrollView
                {
                    //I use LazyVGrid in order to arrange all the elements in a grid
                    LazyVGrid(columns: columns, spacing: 0)
                    {
                     //The first element is ALL. Using the ForEach I can visualize in the DataSet
                        
                        NavigationLink(destination: CountryView(selection: "All",countries: $countries))
                        {
                            ZStack {
                                Image("allCountries")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 175, height: 134)
                                    .clipped()
                                    .cornerRadius(25)
                                    .padding(.top, 5)
                                    .shadow(color: .gray, radius: 1, y: 5)
                                
                                HStack {
                                    
                                    Text("All")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding(.top, 80)
                                        .padding(9)
                                        .shadow(color: .black, radius: 10)
                                    Spacer()
                                }
                            }
                        }.padding(10)
                                           
                        
                        //All the countries are displayed. Thanks to the Navigation Link you can see the recipes of the country
                        
                        ForEach(countries)
                        {
                            country in
                            NavigationLink(destination: CountryView(selection: country.name,countries: $countries))
                            {
                                ZStack {
                                    Image(country.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 175, height: 134)
                                        .clipped()
                                        .cornerRadius(25)
                                        .padding(.top, 5)
                                        .shadow(color: .gray, radius: 1, y: 5)

                                    HStack {
                                        
                                        Text(country.name)
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .bold()
                                            .padding(.top, 80)
                                            .padding(9)
                                            .shadow(color: .black, radius: 10)
                                        Spacer()
                                    }
                                }
                            }.padding(10)
                        }
                        
                        
                        
                    }
                }
            }
            
        }

                
    }
        
}
//
//#Preview
//{
//    DiscoverView()
//}
//
