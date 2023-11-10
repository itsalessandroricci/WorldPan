//
//  FilterView.swift
//  WorldPan
//
//  Created by Davide Formisano on 19/10/23.
//

import SwiftUI

let color1=Color("color1")

    
struct FilterView: View
{
    
    @Binding  var difficulty: Int   // easy=0
    @Binding  var time: Int
    @Environment(\.presentationMode) var presentationMode

    @State var isModalShowed:Bool=false
    
    var body: some View
    {

    NavigationStack
    {
        VStack (alignment: .leading)
        {
            //Difficulty Picker
            
            Text("Difficulty")
                .font(.title)
                .padding()
                .padding(.bottom, -25)
            
            Picker(selection:$difficulty , label: Text("Picker"))
            {
                Text("easy").tag(0)
                Text("medium").tag(1)
                Text("hard").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.all,20.0)
            
            //Time Picker
            
            Text("Time")
                .font(.title)
                .padding()
                .padding(.bottom, -25)
            
            Picker(selection:$time , label: Text("Picker"))
            {
                Text("15'").tag(15)
                Text("30'").tag(30)
                Text("60'").tag(60)
                Text("120'").tag(120)
            }
            .pickerStyle(.segmented)
            .padding(.all,20.0)
            Spacer()
        }.navigationTitle("Filters").padding().font(.title).toolbar{
            
            //we have two elements in the toolbar: done and cancel
            
            ToolbarItem(placement: .navigationBarTrailing)
            {
                Button
                {
                    presentationMode.wrappedValue.dismiss()

                } label:
                {
                    Text("Done")
                }
            }
            
            ToolbarItem(placement: .navigationBarLeading)
            {
                Button
                {
                    //action
                    time = -1
                    difficulty = -1
                    presentationMode.wrappedValue.dismiss()
                } label:
                {
                    Text("Cancel")
                }
            }
            
            
        }
            
            
        }
    }
}


