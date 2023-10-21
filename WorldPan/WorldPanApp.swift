//
//  WorldPanApp.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import SwiftUI

@main
struct AppDevelopmentWSApp: App {
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
             
                RecipeView()
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

