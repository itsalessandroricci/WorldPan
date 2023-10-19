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
                ZStack(alignment: .bottomLeading){
                    Image("carbonara").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 394, height: 277)
                        .clipped()
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 62)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(.top, 150.0)
                    
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
                       
                    }
                    .padding(.leading, 14.0)
                }
            }
            .padding(.bottom, 480.0)
        } //.navigationDestination(item: <#T##Binding<Optional<Hashable>>#>, destination: <#T##(Hashable) -> View#>)
        
    }
}

#Preview {
    RecipeView()
}
