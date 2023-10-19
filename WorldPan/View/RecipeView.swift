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
                ZStack{
                    Image("ciao").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 394, height: 277)
                        .clipped()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 62)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(.top, 150.0)
                    Text("Pasta Carbonara")
                    .font(
                    Font.custom("SF Pro", size: 19.90476)
                    .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)

                    .frame(width: 163.7619, height: 38, alignment: .top) }
                
            }
            .padding(.bottom, 480.0)
        }
        
    }
}

#Preview {
    RecipeView()
}
