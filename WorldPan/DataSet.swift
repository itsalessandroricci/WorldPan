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
    var locations: [String]=[]
}

struct Instruction: Identifiable
{
    var id: UUID = UUID()
    var number:Int
    var title:String
    var description: String
    
}


struct Recipe: Identifiable
{
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var ingredient: [Ingredient]
    var instruction: [Instruction]
    var vegan:Bool = false
    var lactoseFree:Bool = false
    var glutenFree:Bool = false
    var difficulty:Int=0  //0-2
    var time: Int
    var favourite:Bool=false
    var calories: String
    var carbs: String
    var servings: Int
    var description: String
    
}


class DataSet
{
    
   var countries:[Country] =
    [Country(name:"Italy", imageName:"italy",Recipes:[Recipe(name: "Pizza", imageName: "italy", ingredient: [Ingredient(name: "salt",weight: "weight",locations: ["Via Lucullo 72 Bacoli(NA) Italy","",""])] , instruction: [Instruction(number: 1, title: "Make this dededed", description: "dekkekekek")], time: 15, favourite: false, calories: "565 Kcal", carbs: "65.3 carbs", servings: 2, description: "I love pizza")]),
    Country(name: "Mexico", imageName: "mexico"),
    Country(name: "Lebanon", imageName: "lebanon"),
    Country(name: "China", imageName: "china"),
    Country(name: "Thailand", imageName: "thailand")]
    
}
