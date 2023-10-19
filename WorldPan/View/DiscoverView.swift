//
//  DiscoverView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

struct DiscoverView: View
{
    var data = DataSet()
    
     let color1=Color("color1")
    
    let columns: [GridItem] =
    [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("Countries").font(.largeTitle)
                .bold()
                .fontWeight(.black).padding().foregroundColor(color1)
               
            ScrollView
            {
                LazyVGrid(columns: columns, spacing: 0)
                {
                    ZStack
                    {
                        Image("allCountries")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 161.0, height: 124.0)
                            .clipped()
                            .cornerRadius(25)
                            .padding(.top, 5).shadow(color: .gray, radius: 1,y:5)
                        Text("All").font(.title).bold().foregroundColor(.white).shadow(radius: 100).padding(.trailing).position(CGPoint(x: 60, y: 114))
                    }
                    ForEach(data.countries)
                    {
                        country in
                        ZStack
                        {
                            
                            Image(country.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 161, height: 124)
                                .clipped()
                                .cornerRadius(25)
                                .padding(.top, 5).shadow(color: .gray, radius: 1,y:5)
                            Text(country.name).font(.title).foregroundColor(.white).bold().position(CGPoint(x: 60, y: 98)).padding(.trailing).shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }.padding(14)
                    
                    
                 
                }
            }
        }
      
    }
}

#Preview {
    DiscoverView()
}
