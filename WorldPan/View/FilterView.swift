//
//  FilterView.swift
//  WorldPan
//
//  Created by Davide Formisano on 19/10/23.
//

import SwiftUI

struct FilterView: View {
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text("Difficulty")
                .font(.title)
            
            Picker(selection: .constant(1), label: Text("Picker")) {
                Text("Easy").tag(1)
                Text("Medium").tag(2)
                Text("Hard").tag(3)
            }
            .pickerStyle(.segmented)
            .padding()
            
            Text("Time")
                .font(.title)
            
            Picker(selection: .constant(1), label: Text("Picker")) {
                Text("15 min").tag(1)
                Text("30 min").tag(2)
                Text("45 min").tag(3)
                Text("1 h").tag(4)
            }
            .pickerStyle(.segmented)
            .padding()
            
            Text("Diet")
                .font(.title)
                .padding()
            Picker(selection: .constant(1), label: Text("Picker")) {
                Text("Gluten free").tag(1)
                Text("Veg").tag(2)
                Text("Lactose free").tag(3)
            }
            .pickerStyle(.segmented)
            .padding()
            
            //Ingredients
            
            Text("Ingredients")
                .font(.title)
            
            VStack(){
                
                //First line of ingredients
                HStack(alignment: .center, spacing: 0) {
                    Spacer()
                    Text("Tomates")
                        .font(
                            Font.custom("SF Pro", size: 11)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .frame(width: 88.75, height: 25, alignment: .leading)
                        .background(.white)
                        .cornerRadius(7)
                        .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .inset(by: -0.25)
                                .stroke(.black.opacity(0.04), lineWidth: 0.5)
                        )
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Milk")
                            .font(
                                Font.custom("SF Pro", size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .frame(width: 88.75, height: 25, alignment: .leading)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7)
                                    .inset(by: -0.25)
                                    .stroke(.black.opacity(0.04), lineWidth: 0.5)
                            )
                    }
                    .padding()
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Flour")
                            .font(
                                Font.custom("SF Pro", size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .frame(width: 88.75, height: 25, alignment: .leading)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7)
                                    .inset(by: -0.25)
                                    .stroke(.black.opacity(0.04), lineWidth: 0.5)
                            )
                    }
                    .padding()
                }
                .padding()
                
                //Second line of ingredients
                HStack(alignment: .center, spacing: 0) {
                    Spacer()
                    Text("Eggs")
                        .font(
                            Font.custom("SF Pro", size: 11)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .frame(width: 88.75, height: 25, alignment: .leading)
                        .background(.white)
                        .cornerRadius(7)
                        .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .inset(by: -0.25)
                                .stroke(.black.opacity(0.04), lineWidth: 0.5)
                        )
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Avocado")
                            .font(
                                Font.custom("SF Pro", size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .frame(width: 88.75, height: 25, alignment: .leading)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7)
                                    .inset(by: -0.25)
                                    .stroke(.black.opacity(0.04), lineWidth: 0.5)
                            )
                    }
                    .padding()
                    
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Meat")
                            .font(
                                Font.custom("SF Pro", size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .frame(width: 88.75, height: 25, alignment: .leading)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7)
                                    .inset(by: -0.25)
                                    .stroke(.black.opacity(0.04), lineWidth: 0.5)
                            )
                    }
                    .padding()
                }
                .padding()
                
                //Third line of ingredients
                HStack(alignment: .center, spacing: 0) {
                    Spacer()
                    Text("Fish")
                        .font(
                            Font.custom("SF Pro", size: 11)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .frame(width: 88.75, height: 25, alignment: .leading)
                        .background(.white)
                        .cornerRadius(7)
                        .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .inset(by: -0.25)
                                .stroke(.black.opacity(0.04), lineWidth: 0.5)
                        )
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Text("Fruit")
                            .font(
                                Font.custom("SF Pro", size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 3)
                            .frame(width: 88.75, height: 25, alignment: .leading)
                            .background(.white)
                            .cornerRadius(7)
                            .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 7)
                                    .inset(by: -0.25)
                                    .stroke(.black.opacity(0.04), lineWidth: 0.5)
                            )
                        
                        HStack(alignment: .center, spacing: 0) {
                            Spacer()
                            Text("Chocolate")
                                .font(
                                    Font.custom("SF Pro", size: 11)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 3)
                                .frame(width: 88.75, height: 25, alignment: .leading)
                                .background(.white)
                                .cornerRadius(7)
                                .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                                .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7)
                                        .inset(by: -0.25)
                                        .stroke(.black.opacity(0.04), lineWidth: 0.5)
                                )
                        }
                        .padding()
                    }
                    .padding()
                }
                .padding()
                
            }
            
            //Countries
            
            Text("Countries")
                .font(.title)
            
            
            HStack(alignment: .center, spacing: 0) {
                Text("Italy")
                    .font(
                        Font.custom("SF Pro", size: 11)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 3)
                    .frame(width: 88.75, height: 25, alignment: .leading)
                    .background(.white)
                    .cornerRadius(7)
                    .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                    .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .inset(by: -0.25)
                            .stroke(.black.opacity(0.04), lineWidth: 0.5)
                    )
                
                
                HStack(alignment: .center, spacing: 0) {
                    Text("Mexico")
                        .font(
                            Font.custom("SF Pro", size: 11)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .frame(width: 88.75, height: 25, alignment: .leading)
                        .background(.white)
                        .cornerRadius(7)
                        .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .inset(by: -0.25)
                                .stroke(.black.opacity(0.04), lineWidth: 0.5)
                        )
                }
                .padding()
                
                HStack(alignment: .center, spacing: 0) {
                    Text("Usa")
                        .font(
                            Font.custom("SF Pro", size: 11)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 18, maxHeight: 18, alignment: .top)                .colorMultiply(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 3)
                        .frame(width: 88.75, height: 25, alignment: .leading)
                        .background(.white)
                        .cornerRadius(7)
                        .shadow(color: .black.opacity(0.04), radius: 0.5, x: 0, y: 3)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 0, y: 3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 7)
                                .inset(by: -0.25)
                                .stroke(.black.opacity(0.04), lineWidth: 0.5)
                        )
                }
                .padding()
            }
            .padding()
            
        }
    }
}

#Preview {
    FilterView()
}
