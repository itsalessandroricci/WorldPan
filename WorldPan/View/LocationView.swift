//
//  LocationView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 24/10/23.
//

import SwiftUI
import MapKit



struct LocationView: View
{
    @State public var ingredient:Ingredient
    @State public var recipe:Recipe
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.85143619677846, longitude: 14.267463135697087), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack
            {
               
                Image(ingredient.imageName).resizable().clipShape(Circle()).frame(width:80, height: 80).padding()
                Text(ingredient.name).font(.largeTitle).bold().padding().foregroundColor(color1)
            }
            ForEach(ingredient.locations)
            {
                location in
                
                
                Text("Nearest location is:").bold().padding()
                Text(location.name).padding()
                Spacer()
                
                Map(coordinateRegion: $mapRegion, annotationItems: ingredient.locations)
                {
                    location in
                    MapMarker(coordinate: location.coordinate)
                }.padding(.bottom)
                
                
                
            }
        }
        .offset(y: -40)
       
    
        
    }
}



//#Preview {
//    LocationView()
//}
//
