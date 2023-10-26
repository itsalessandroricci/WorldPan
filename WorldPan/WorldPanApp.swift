//
//  WorldPanApp.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

@main
struct WorldPanApp: App
{
 //   @State  var data:DataSet=dataSet
    @State var state: [Country] = countries

    var body: some Scene
    {
        WindowGroup
        {
            
            TabView
            {
             
                DiscoverView( countries: $state)
                    .tabItem {
                        Label("Countries", systemImage: "globe.desk.fill")
                        }
                    
                FavouriteView(countries:$state)
                    .tabItem {
                        Label("Favourites", systemImage: "heart")
                    }
                
            }
            
        }
    }
    
}
