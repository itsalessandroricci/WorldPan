//
//  DataSet.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import Foundation


struct Country: Identifiable
{
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var Recipes:[Recipe] = []
}


struct Ingredient: Identifiable
{
    var id: UUID = UUID()
    var name: String
    var weight: String
}


struct Recipe: Identifiable
{
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var ingredient: [Ingredient]
    var instruction: String
    var vegan:Bool = false
    var lactoseFree:Bool = false
    var glutenFree:Bool = false
    var difficulty:Int=0                //0-2
    var favourite:Bool=false
}


class DataSet
{
    
    var countries:[Country] =
    [Country(name:"Italy",imageName:"italy",Recipes:[Recipe(name: "Pizza", imageName: "italy", ingredient: [Ingredient(name: "salt",weight: "weight")] , instruction: "These are the instructions:")]),
    Country(name: "Mexico", imageName: "mexico"),
    Country(name: "Lebanon", imageName: "lebanon"),
    Country(name: "China", imageName: "china"),
    Country(name: "Thailand", imageName: "thailand")]
}




