//
//  WorldPanApp.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

@main
struct WorldPanApp: App {
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
             
                DiscoverView()
                    .tabItem {
                        Label("Countries", systemImage: "globe.desk.fill")
                    }
                    
                FavouriteView()
                    .tabItem {
                        Label("Favourites", systemImage: "heart")
                    }
                
            }
            
        }
    }
    
}

