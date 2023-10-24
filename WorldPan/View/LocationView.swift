//
//  LocationView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 24/10/23.
//

import SwiftUI
//import MapKit

struct LocationView: View
{
    @State public var ingredient:Ingredient
    var body: some View
    {
        VStack
        {
            ForEach(ingredient.locations)
            {
                location in


                Text(location.name).bold()
                Spacer()


            }
        }
    }
}

/*

#Preview {
    LocationView()
}
*/
