//
//  ContentView.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedSegment = 0

    let ingredients = ["Ingrediente 1", "Ingrediente 2", "Ingrediente 3"]
    let instructions = ["Istruzione 1", "Istruzione 2", "Istruzione 3"]

    var body: some View {
        VStack {
            Picker("", selection: $selectedSegment) {
                Text("Ingredienti").tag(0)
                Text("Istruzioni").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            ScrollView {
                if selectedSegment == 0 {
                    VStack(alignment: .leading) {
                        ForEach(ingredients, id: \.self) { ingredient in
                            Text(ingredient)
                                .padding(.vertical, 5)
                        }
                    }
                    .padding()
                } else {
                    VStack(alignment: .leading) {
                        ForEach(instructions, id: \.self) { instruction in
                            Text(instruction)
                                .padding(.vertical, 5)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
