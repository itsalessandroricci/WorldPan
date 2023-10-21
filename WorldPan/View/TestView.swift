//
//  TestView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//
//
import SwiftUI

struct TestView: View {
    @State private var selectedSegment = 0

   

    var body: some View {
        VStack {
            Picker("", selection: $selectedSegment) {
                Text("Ingredienti").tag(0)
                Text("Istruzioni").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            VStack {
                if selectedSegment == 0 {
                               Text("lol")
                           }
                    }
                    
            };  if selectedSegment == 1 {
                VStack(alignment: .leading) {
                   
                      Text("lol")
                         
                    }
                    }
               
                }
            }
        
   


//struct MyApp: App {
//    var body: some Scene {
//        WindowGroup {
//          TestView()
//        }
//    }
//}
#Preview {
    TestView()
}
