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
    @State public var data:DataSet=DataSet()
    var body: some Scene
    {
        WindowGroup
        {
            
            TabView
            {
             
                DiscoverView(data: $data)
                    .tabItem {
                        Label("Countries", systemImage: "globe.desk.fill")
                        }
                    
                FavouriteView(data:$data)
                    .tabItem {
                        Label("Favourites", systemImage: "heart")
                    }
                
            }
            
        }
    }
    
}
