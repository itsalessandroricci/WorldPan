//
//  DataSet.swift
//  WorldPan
//
//  Created by Alessandro Ricci on 19/10/23.
//

import Foundation
import MapKit

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
    var imageName: String=""
    var locations: [Location] = []
}

struct Location: Identifiable
{
    let id: UUID = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
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
    let servings: Int
    var description: String
    
   
    
}




    
var countries:[Country] =
    
    [
    //China
        Country(name: "China", imageName: "china",
            Recipes: [Recipe(name: "Gulou Rou", imageName: "gulourou",
                                ingredient: [
                                    Ingredient(name: "Salt", weight: "to taste", imageName: "salt",locations: [Location(name: "Supermarket 1, 546 Via Bagnoli", coordinate: CLLocationCoordinate2D(latitude: 40.815938, longitude: 14.172250))]),
                                    Ingredient(name: "Pepper", weight: "to taste", imageName: "blackpepper", locations: [Location(name: "Supermarket 2, 208 Via Alessandro Manzoni", coordinate: CLLocationCoordinate2D(latitude: 40.818437, longitude:14.202407 ))]),
                                    Ingredient(name: "Pork loin", weight: "225g", imageName: "porkloin"),
                                    Ingredient(name: "Cornstarch", weight: "1/4 cup", imageName: "cornstarch"),
                                    Ingredient(name: "Eggs", weight: "1", imageName: "eggs"),
                                    Ingredient(name: "Vegetable oil", weight: "for frying", imageName: "oil"),
                                    Ingredient(name: "Ketchup", weight: "1/4 cups", imageName: "ketchup"),
                                    Ingredient(name: "Rice vinegar", weight: "3 tbps", imageName: "ricevinegar"),
                                    Ingredient(name: "Soy sauce", weight: "2 tbsp", imageName: "soysauce"),
                                    Ingredient(name: "Sugar", weight: "2 tbsp", imageName: "sugar"),
                                    Ingredient(name: "Cornstarch slurry", weight: "1 cup", imageName: "cornstarchslurry"),
                                    Ingredient(name: "Bell pepper", weight: "1", imageName: "bellpeppers"),
                                    Ingredient(name: "Onion", weight: "1/2", imageName: "onion"),
                                    Ingredient(name: "Sliced green onions", weight: "Optional", imageName: "slicedgreenonions"),
                                    Ingredient(name: "Sesame seeds", weight: "Optional", imageName: "sesameseeds")
                                    ],
                                
                                instruction: [
                                    Instruction(number: 1,
                                                title: "Prepare the Pork:",
                                                description: "Season the pork pieces with salt and pepper. Dredge the pork pieces in cornstarch, dip them in beaten egg, and coat them again with cornstarch."),
                                    Instruction(number: 2,
                                                title: "Fry the Pork:",
                                                description: "Heat vegetable oil in a pan or wok for deep frying. Fry the pork pieces until they are golden brown and cooked through."),
                                    Instruction(number: 3,
                                                title: "Prepare the Sauce pt.2:",
                                                description: " Remove and place them on paper towels to drain excess oil."),
                                    Instruction(number: 4,
                                                title: "Prepare the Sauce:",
                                                description: "In a small bowl, mix together ketchup, rice vinegar, soy sauce, and sugar. In a separate small bowl, mix cornstarch with water to create a slurry."),
                                    Instruction(number: 5,
                                                title: "Stir-Fry Vegetables:",
                                                description: "In a clean pan or wok, stir-fry the bell pepper, onion, and pineapple chunks (if using) until they are slightly tender."),
                                    Instruction(number: 6,
                                                title: "Combine Everything:",
                                                description: "Add the fried pork to the stir-fried vegetables."),
                                    Instruction(number: 7,
                                                title: "Add the Sauce:",
                                                description: "Pour the prepared sauce over the pork and vegetables. Stir the cornstarch slurry once more and add it to the pan. Stir everything together until the sauce thickens."),
                                    Instruction(number: 8,
                                                title: "Garnish (Optional):",
                                                description: "Garnish with sliced green onions and sesame seeds if desired."),
                                    Instruction(number: 9,
                                                title: "Serve:",
                                                description: "Serve the Sweet and Sour Pork over rice or noodles.")
                                ],
                                difficulty: 1,
                                time: 60,
                                favourite: false,
                                calories: "680  Kcla",
                                carbs: "55 carbs",
                                servings: 2,
                                description: "Crispy battered and deep-fried pork served with a sweet and tangy sauce made with vinegar, sugar, and ketchup."
                            ),
                        Recipe(name: "Gong Bao Ji Ding", imageName: "gongbao",
                                        ingredient: [
                                            Ingredient(name: "skinless chicken breasts", weight: "225g", imageName: "chickenbreastscubes"),
                                            Ingredient(name: "Soy sauce", weight: "3 tbsp", imageName: "soysauce"),
                                            Ingredient(name: "Rice wine", weight: "1 tbsp", imageName: "ricewine"),
                                            Ingredient(name: "Cornstarch", weight: "1 tbsp", imageName: "cornstarch"),
                                            Ingredient(name: "Hoisin sauce", weight: "1 tbsp", imageName: "hoisinsauce"),
                                            Ingredient(name: "Rice vinegar", weight: "1 tbsp", imageName: "ricevinegar"),
                                            Ingredient(name: "Sugar", weight: "1 tbsp", imageName: "sugar"),
                                            Ingredient(name: "Vegetable oil", weight: "1 tbsp", imageName: "oil"),
                                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                                            Ingredient(name: "Ginger", weight: "1 tbsp", imageName: "ginger"),
                                            Ingredient(name: "Unsalted dry roasted peanuts", weight: "1/2 cup", imageName: "unsalteddryroastedpeanuts"),
                                            Ingredient(name: "Bell pepper", weight: "1", imageName: "bellpeppers"),
                                            Ingredient(name: "Zucchini", weight: "1/2", imageName: "zucchini"),
                                            Ingredient(name: "Sliced green onions", weight: "For Garnish", imageName: "slicedgreenonions"),
                                            ],
                                        
                                        instruction: [
                                            Instruction(number: 1,
                                                        title: "Marinate the Chicken:",
                                                        description: "In a bowl, combine the chicken cubes with soy sauce, rice wine (or sherry), and cornstarch. Let it marinate for at least 15-20 minutes."),
                                            Instruction(number: 2,
                                                        title: "Prepare the Sauce:",
                                                        description: "In a small bowl, mix together soy sauce, hoisin sauce, rice vinegar, and sugar. Set aside."),
                                            Instruction(number: 3,
                                                        title: "Stir-Fry the Chicken:",
                                                        description: "Heat 1 tablespoon of vegetable oil in a wok or large skillet over medium-high heat."),
                                            Instruction(number: 4,
                                                        title: "Stir-Fry the Chicken pt.2:",
                                                        description: "Add the marinated chicken and stir-fry until it's cooked through and slightly browned. Remove from the pan and set aside."),
                                            Instruction(number: 5,
                                                        title: "Stir-Fry Vegetables:",
                                                        description: "In the same pan, add another tablespoon of oil. Add minced garlic and ginger, stir-frying for about 30 seconds."),
                                            Instruction(number: 6,
                                                        title: "Stir-Fry Vegetables pt.2:",
                                                        description: "Add diced bell pepper and zucchini, stir-frying until they are slightly tender but still crisp."),
                                            Instruction(number: 7,
                                                        title: "Combine Everything:",
                                                        description: "Return the cooked chicken to the pan with the vegetables. Pour the prepared sauce over the chicken and vegetables. Stir everything together."),
                                            Instruction(number: 8,
                                                        title: "Add Peanuts:",
                                                        description: "Add dry roasted peanuts and stir-fry for an additional 1-2 minutes until everything is well-coated and heated through."),
                                            Instruction(number: 9,
                                                        title: "Garnish and Serve",
                                                        description: "Garnish with sliced green onions. Serve the Kung Pao Chicken over steamed rice."),
                                            
                                        ],
                                        difficulty: 1,
                                        time: 30,
                                        favourite: false,
                                        calories: "1005 Kcla",
                                        carbs: "30 carbs",
                                        servings: 2,
                                        description: "Stir-fried chicken with peanuts, vegetables, and chili peppers. It's known for its bold and spicy flavor."
                                        ),
                        
                        Recipe(name: "Mapo Tofu", imageName: "mapotofu",
                                        ingredient: [
                                            Ingredient(name: "Soy sauce", weight: "2 tbsp", imageName: "soysauce"),
                                            Ingredient(name: "Oyster sauce", weight: "1 tbsp", imageName: "oystersauce"),
                                            Ingredient(name: "Shaoxing wine", weight: "1 tbsp", imageName: "shaoxingwine"),
                                            Ingredient(name: "Sugar", weight: "1 tsp", imageName: "sugar"),
                                            Ingredient(name: "Chicken broth", weight: "2 cups", imageName: "chickenbroth"),
                                            Ingredient(name: "Vegetable oil", weight: "1 tbsp", imageName: "oil"),
                                            Ingredient(name: "Ground pork", weight: "225g", imageName: "groundpork"),
                                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                                            Ingredient(name: "Ginger", weight: "1 tbsp", imageName: "ginger"),
                                            Ingredient(name: "Fermented black beans", weight: "2 tbps", imageName: "fermentedblackbeans"),
                                            Ingredient(name: "Doubanjiang", weight: "2 tbps", imageName: "doubanjiang"),
                                            Ingredient(name: "Frozen green peas", weight: "1/2 cup", imageName: "peas"),
                                            Ingredient(name: "Firm tofu", weight: "1 block", imageName: "firmtofu"),
                                            Ingredient(name: "Green onions", weight: "2", imageName: "greenonions"),
                                            Ingredient(name: "Sesame oil", weight: "1 tsp", imageName: "sesameoil"),
                                            ],
                                        
                                        instruction: [
                                            Instruction(number: 1,
                                                        title: "Prepare the Sauce:",
                                                        description: "In a bowl, mix together soy sauce, oyster sauce, Chinese cooking wine, sugar, and chicken or vegetable broth. Set aside."),
                                            Instruction(number: 2,
                                                        title: "Cook the Ground Pork:",
                                                        description: "Heat vegetable oil in a wok or large skillet over medium-high heat. Add the ground pork and cook until it's browned and cooked through."),
                                            Instruction(number: 3,
                                                        title: "Add Aromatics:",
                                                        description: "Push the pork to the side and add minced garlic, grated ginger, fermented black beans, and doubanjiang. Stir-fry for about 1-2 minutes until fragrant."),
                                            Instruction(number: 4,
                                                        title: "Combine Sauce and Tofu:",
                                                        description: "Pour in the prepared sauce and add the tofu cubes. Gently stir to combine, being careful not to break the tofu. If using green peas, add them now."),
                                            Instruction(number: 5,
                                                        title: "Simmer:",
                                                        description: "Reduce the heat to medium-low, cover, and let it simmer for 10-15 minutes, allowing the flavors to meld. If the sauce thickens too much, you can add a bit more broth."),
                                            Instruction(number: 6,
                                                        title: "Finish and Serve:",
                                                        description: "Drizzle sesame oil over the Mapo Tofu, garnish with chopped green onions, and serve hot over steamed rice."),
                                            
                                        ],
                                        difficulty: 1,
                                        time: 30,
                                        favourite: false,
                                        calories: "990 Kcla",
                                        carbs: "24 carbs",
                                        servings: 2,
                                        description: "Tofu cubes cooked in a spicy, aromatic sauce made with fermented black beans, chili paste, and Sichuan peppercorns."
                                        ),
                        Recipe(name: "Peking Duck", imageName: "pekingduck",
                                            
                                    ingredient:
                                        [
                                            Ingredient(name: "Whole duck", weight: "1", imageName: "duck"),
                                            Ingredient(name: "Soy sauce", weight: "2 tbsp", imageName: "soysauce"),
                                            Ingredient(name: "Hoisin sauce", weight: "2 tbsp", imageName: "hoisinsauce"),
                                            Ingredient(name: "Honey", weight: "1 tbsp", imageName: "honey"),
                                            Ingredient(name: "Shaoxing wine", weight: "1 tbsp", imageName: "shaoxingwine"),
                                            Ingredient(name: "Five-spice powder", weight: "1 ", imageName: "fivespicepowder"),
                                            Ingredient(name: "Mandarin pancakes (store-bought)", weight: "To taste", imageName: "mandarinpancakes"),
                                            Ingredient(name: "Sliced green onions", weight: "To taste", imageName: "greenonions"),
                                            Ingredient(name: "Thinly sliced cucumber", weight: "To taste", imageName: "thinlyslicedcucumber")
                                    
                                        ],
                                    instruction:
                                        [
                                    Instruction(number: 1,
                                                title: "Preparation:",
                                                description: "Preheat the oven to 350째F (175째C)."),
                                    Instruction(number: 2,
                                                title: "Clean and Dry the Duck:",
                                                description: "Clean the duck thoroughly and pat it dry. Remove excess fat from the cavity."),
                                    Instruction(number: 3,
                                                title: "Marinate the Duck:",
                                                description: "In a bowl, mix together soy sauce, hoisin sauce, honey, Shaoxing wine, and five-spice powder to create the marinade."),
                                    Instruction(number: 4,
                                                title: "Marinate the Duck pt.2:",
                                                description: "Rub this mixture both inside and outside the duck, ensuring it's well coated. Let it marinate for at least 2 hours or overnight in the refrigerator."),
                                    Instruction(number: 5,
                                                title: "Roasting:",
                                                description: "Place the marinated duck on a rack in a roasting pan, breast side up."),
                                    Instruction(number: 6,
                                                title: "Roasting pt.2:",
                                                description: "Roast in the preheated oven for about 1.5 to 2 hours or until the skin is crispy and the internal temperature reaches 165째F (74째C)."),
                                    Instruction(number: 7,
                                                title: "Warm the Mandarin pancakes:",
                                                description: "While the duck is roasting, warm the Mandarin pancakes according to the package instructions. When the duck is done, let it rest for a few minutes before carving."),
                                    Instruction(number: 8,
                                                title: "Serve:",
                                                description: "Serve the carved duck on the warmed pancakes. Each pancake should include some duck meat, a dollop of hoisin sauce, sliced green onions, and cucumber.")
                                        ],
                                    difficulty: 2,
                                    time: 120,
                                    favourite: false,
                                    calories: "1000 Kcal",
                                    carbs: "30 carbs",
                                    servings: 2,
                                    description: "Roast duck with a crispy skin, typically served with thin pancakes, hoisin sauce, and sliced scallions."
                                            
                                )
                        
            ]
            ),
    //Finland
        Country(name:"Finland",imageName:"finland",
                    
                    Recipes:[
                    Recipe(name: "Karjalanpiirakka", imageName: "karjalanpiirakka", ingredient:
                        [
                            Ingredient(name: "Rye Flour", weight: "250g", imageName: "ryeflour",locations: [Location(name: "Supermarket 1, 70 Via delle Repubbliche Marinare", coordinate: CLLocationCoordinate2D(latitude: 40.844465, longitude: 14.305242))]),
                            Ingredient(name: "Rice Porridge", weight: "200g", imageName: "riceporridge", locations: [Location(name: "Supermarket 2, 38 Via Ammiraglio Ferdinando Acton", coordinate: CLLocationCoordinate2D(latitude: 40.837076, longitude: 14.253472))]),
                            Ingredient(name: "Butter", weight: "50g", imageName: "butter"),
                            Ingredient(name: "Water", weight: "150ml", imageName: "water"),
                            Ingredient(name: "Egg Butter", weight: "to taste", imageName: "eggbutter"),
                            Ingredient(name: "Salt", weight: "1 tsp", imageName: "salt"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Prepare the Dough:",
                                            description: "Mix rye flour and water to create a smooth dough. Let it rest for 30 minutes."),
                            Instruction(number: 2,
                                            title: "Shape the Pasties:",
                                            description: "Roll the dough into small, thin circles. Spread rice porridge on one half of each circle, then fold them in half."),
                            Instruction(number: 3,
                                            title: "Cook the Pasties:",
                                            description: "Bake the pasties in the oven at 250°C until they turn golden brown."),
                            Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Brush pasties with melted butter and top with egg butter. Serve warm."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "220 Kcal",
                        carbs: "40 carbs",
                        servings: 6,
                        description: "A traditional Finnish pastry made with rye flour and filled with rice porridge."
                    ),
                    Recipe(name: "Kalakukko", imageName: "kalakukko", ingredient:
                        [
                            Ingredient(name: "Rye Flour", weight: "400g", imageName: "ryeflour"),
                            Ingredient(name: "Water", weight: "200ml", imageName: "water"),
                            Ingredient(name: "Fish (salmon or perch)", weight: "500g", imageName: "fish"),
                            Ingredient(name: "Pork Belly", weight: "200g", imageName: "porkbelly"),
                            Ingredient(name: "Salt", weight: "2 tsp", imageName: "salt"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Prepare the Dough:",
                                            description: "Mix rye flour and water to create a firm dough. Let it rest for 30 minutes."),
                            Instruction(number: 2,
                                            title: "Prepare the Filling:",
                                            description: "Layer fish and pork belly in the dough, seasoning with salt."),
                            Instruction(number: 3,
                                            title: "Bake the Kalakukko:",
                                            description: "Bake in the oven at 200°C for several hours until the filling is cooked and the crust is crispy."),
                            Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Slice and serve the kalakukko in thin pieces. It can be eaten hot or cold."),
                        ],
                        difficulty: 1,
                        time: 120,
                        favourite: false,
                        calories: "350 Kcal",
                        carbs: "45 carbs",
                        servings: 4,
                        description: "A traditional Finnish fish pie made with rye crust, fish, and pork belly."
                    ),
                    Recipe(name: "Lohikeitto", imageName: "lohikeitto", ingredient:
                        [
                            Ingredient(name: "Salmon Fillet", weight: "400g", imageName: "fish"),
                            Ingredient(name: "Potatoes", weight: "300g", imageName: "potatoes"),
                            Ingredient(name: "Carrots", weight: "2", imageName: "carrot"),
                            Ingredient(name: "Leeks", weight: "2", imageName: "leeks"),
                            Ingredient(name: "Dill", weight: "1/4 cup", imageName: "dill"),
                            Ingredient(name: "Cream", weight: "200ml", imageName: "cream"),
                            Ingredient(name: "Water", weight: "1.5 liters", imageName: "water"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Prepare the Vegetables:",
                                            description: "Peel and dice potatoes, carrots, and leeks. Chop dill."),
                            Instruction(number: 2,
                                            title: "Cook the Vegetables:",
                                            description: "Boil the vegetables in water until they are tender."),
                            Instruction(number: 3,
                                            title: "Add Salmon and Cream:",
                                            description: "Add salmon and cream to the soup. Cook until the salmon is done."),
                            Instruction(number: 4,
                                            title: "Season:",
                                            description: "Season with salt and pepper. Add chopped dill."),
                            Instruction(number: 5,
                                            title: "Serve:",
                                            description: "Serve the lohikeitto hot with rye bread."),
                        ],
                        difficulty: 1,
                        time: 30,
                        favourite: false,
                        calories: "320 Kcal",
                        carbs: "30 carbs",
                        servings: 4,
                        description: "A creamy Finnish salmon soup with potatoes, carrots, and dill."
                    ),
                    Recipe(name: "Hernekeitto", imageName: "hernekeitto", ingredient:
                        [
                            Ingredient(name: "Green Peas", weight: "400g", imageName: "peas"),
                            Ingredient(name: "Ham", weight: "200g", imageName: "ham"),
                            Ingredient(name: "Onions", weight: "2", imageName: "onion"),
                            Ingredient(name: "Water", weight: "1.5 liters", imageName: "water"),
                            Ingredient(name: "Salt", weight: "1 tsp", imageName: "salt"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Prepare the Soup:",
                                            description: "Boil green peas and diced ham in water with chopped onions."),
                            Instruction(number: 2,
                                            title: "Simmer:",
                                            description: "Simmer the soup until the peas are tender and the flavors meld."),
                            Instruction(number: 3,
                                            title: "Serve:",
                                            description: "Serve hernekeitto hot with a dollop of mustard."),
                        ],
                        difficulty: 0,
                        time: 60,
                        favourite: false,
                        calories: "180 Kcal",
                        carbs: "25 carbs",
                        servings: 6,
                        description: "A classic Finnish pea soup made with green peas and ham, traditionally served with mustard."
                    ),
                    Recipe(name: "Mustikkapiirakka", imageName: "mustikkapiirakka", ingredient:
                        [
                            Ingredient(name: "Blueberries", weight: "300g", imageName: "blueberries"),
                            Ingredient(name: "Butter", weight: "150g", imageName: "butter"),
                            Ingredient(name: "Sugar", weight: "200g", imageName: "sugar"),
                            Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            Ingredient(name: "Flour", weight: "300g", imageName: "all-purposeflour"),
                            Ingredient(name: "Baking Powder", weight: "1 tsp", imageName: "bakingpowder"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Prepare the Batter:",
                                            description: "Cream butter and sugar, then add eggs, flour, and baking powder."),
                            Instruction(number: 2,
                                            title: "Assemble the Pie:",
                                            description: "Spread half of the batter in a baking dish, add blueberries, and top with the remaining batter."),
                            Instruction(number: 3,
                                            title: "Bake:",
                                            description: "Bake at 180°C until the pie is golden brown."),
                            Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Serve mustikkapiirakka with a scoop of vanilla ice cream."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "280 Kcal",
                        carbs: "35 carbs",
                        servings: 8,
                        description: "A delicious Finnish blueberry pie with a buttery crust and sweet blueberry filling."
                    ),

                            
                            
                            
                            ]
                    ),
    //India
        Country(name:"India",imageName:"india",
                    
                    Recipes:[
                    Recipe(name: "Biryani", imageName: "biryani", ingredient:
                        [
                            Ingredient(name: "Basmati Rice", weight: "300g", imageName: "basmatirice", locations: [Location(name: "Supermarket 1, 1 Traversa II Miliscola", coordinate: CLLocationCoordinate2D(latitude: 40.833638, longitude: 14.096788))]),
                            Ingredient(name: "Chicken", weight: "500g", imageName: "chicken", locations: [Location(name: "Supermarket 2, Via Spiaggia Romana", coordinate: CLLocationCoordinate2D(latitude: 40.831048, longitude: 14.050110))]),
                            Ingredient(name: "Onion", weight: "2", imageName: "onion"),
                            Ingredient(name: "Yogurt", weight: "100g", imageName: "yogurt"),
                            Ingredient(name: "Spices", weight: "to taste", imageName: "spices"),
                            Ingredient(name: "Ghee", weight: "2 tbsp", imageName: "ghee"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Marinate the Chicken:",
                                            description: "Marinate chicken in yogurt and spices for a few hours."),
                            Instruction(number: 2,
                                            title: "Cook the Rice:",
                                            description: "Cook the basmati rice until partially done and set aside."),
                            Instruction(number: 3,
                                            title: "Layer the Biryani:",
                                            description: "Layer the marinated chicken and partially cooked rice. Sprinkle with spices and ghee."),
                            Instruction(number: 4,
                                            title: "Dum Cooking:",
                                            description: "Cover and cook on low heat until the biryani is fully cooked and fragrant."),
                            Instruction(number: 5,
                                            title: "Serve:",
                                            description: "Serve the biryani hot with raita or salan."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "400 Kcal",
                        carbs: "50 carbs",
                        servings: 4,
                        description: "A flavorful Indian rice dish with marinated chicken and aromatic spices."
                    ),
                    Recipe(name: "Paneer Tikka", imageName: "paneertikka", ingredient:
                        [
                            Ingredient(name: "Paneer (Cottage Cheese)", weight: "250g", imageName: "paneer"),
                            Ingredient(name: "Yogurt", weight: "100g", imageName: "yogurt"),
                            Ingredient(name: "Spices", weight: "to taste", imageName: "spices"),
                            Ingredient(name: "Bell Peppers", weight: "2", imageName: "bellpeppers"),
                            Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                            Ingredient(name: "Lemon Juice", weight: "2 tbsp", imageName: "lemonjuice"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Marinate the Paneer:",
                                            description: "Marinate paneer in yogurt, spices, and lemon juice for at least 30 minutes."),
                            Instruction(number: 2,
                                            title: "Prepare Skewers:",
                                            description: "Thread marinated paneer, bell peppers, and onion onto skewers."),
                            Instruction(number: 3,
                                            title: "Grill or Bake:",
                                            description: "Grill or bake the skewers until the paneer is charred and cooked."),
                            Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Serve paneer tikka hot with mint chutney."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "250 Kcal",
                        carbs: "15 carbs",
                        servings: 4,
                        description: "A popular Indian appetizer with marinated paneer and vegetables, grilled to perfection."
                    ),
                    Recipe(name: "Butter Chicken", imageName: "butterchicken", ingredient:
                        [
                            Ingredient(name: "Chicken", weight: "500g", imageName: "chicken"),
                            Ingredient(name: "Tomato Sauce", weight: "200g", imageName: "tomatosauce"),
                            Ingredient(name: "Cream", weight: "150ml", imageName: "cream"),
                            Ingredient(name: "Butter", weight: "50g", imageName: "butter"),
                            Ingredient(name: "Spices", weight: "to taste", imageName: "spices"),
                            Ingredient(name: "Garlic", weight: "4 cloves", imageName: "garlic"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Marinate and Cook the Chicken:",
                                            description: "Marinate chicken with spices and garlic, then cook until tender."),
                            Instruction(number: 2,
                                            title: "Prepare the Sauce:",
                                            description: "In a separate pan, prepare a rich tomato-based sauce with cream and spices."),
                            Instruction(number: 3,
                                            title: "Combine Chicken and Sauce:",
                                            description: "Combine the cooked chicken with the tomato sauce and simmer."),
                            Instruction(number: 4,
                                            title: "Finish with Butter:",
                                            description: "Stir in butter to enhance the flavor and richness."),
                            Instruction(number: 5,
                                            title: "Serve:",
                                            description: "Serve butter chicken with naan or rice."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "350 Kcal",
                        carbs: "20 carbs",
                        servings: 4,
                        description: "A creamy and flavorful Indian chicken dish cooked with a tomato-based sauce and butter."
                    ),
                    Recipe(name: "Dal Makhani", imageName: "dalmakhani", ingredient:
                        [
                            Ingredient(name: "Black Lentils", weight: "250g", imageName: "blacklentils"),
                            Ingredient(name: "Red Kidney Beans", weight: "100g", imageName: "kidneybeans"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Cream", weight: "100ml", imageName: "cream"),
                            Ingredient(name: "Butter", weight: "50g", imageName: "butter"),
                            Ingredient(name: "Spices", weight: "to taste", imageName: "spices"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Cook Lentils and Beans:",
                                            description: "Cook black lentils and kidney beans until soft and tender."),
                            Instruction(number: 2,
                                            title: "Prepare Tomato Base:",
                                            description: "Create a rich tomato-based sauce with spices and cream."),
                            Instruction(number: 3,
                                            title: "Combine with Lentils:",
                                            description: "Combine the cooked lentils and beans with the tomato sauce."),
                            Instruction(number: 4,
                                            title: "Simmer and Finish:",
                                            description: "Simmer the dal, and finish with a dollop of butter for extra flavor."),
                            Instruction(number: 5,
                                            title: "Serve:",
                                            description: "Serve dal makhani with rice or naan."),
                        ],
                        difficulty: 1,
                        time: 60,
                        favourite: false,
                        calories: "300 Kcal",
                        carbs: "40 carbs",
                        servings: 4,
                        description: "A creamy and hearty Indian dish made with black lentils and kidney beans, simmered in a rich tomato and cream sauce."
                    ),
                    Recipe(name: "Chana Masala", imageName: "chanamasala", ingredient:
                        [
                            Ingredient(name: "Chickpeas", weight: "400g", imageName: "chickpeas"),
                            Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Spices", weight: "to taste", imageName: "spices"),
                            Ingredient(name: "Ginger-Garlic Paste", weight: "2 tbsp", imageName: "gingergarlic"),
                            Ingredient(name: "Cilantro", weight: "to taste", imageName: "freshcilantro"),
                        ],
                        instruction:
                        [
                            Instruction(number: 1,
                                            title: "Sauté Onions and Spices:",
                                            description: "Sauté onions, ginger-garlic paste, and spices until fragrant."),
                            Instruction(number: 2,
                                            title: "Add Tomatoes and Chickpeas:",
                                            description: "Add chopped tomatoes and chickpeas to the sautéed mixture."),
                            Instruction(number: 3,
                                            title: "Simmer and Garnish:",
                                            description: "Simmer the chana masala and garnish with fresh cilantro."),
                            Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Serve with rice or naan for a satisfying meal."),
                        ],
                        difficulty: 1,
                        time: 30,
                        favourite: false,
                        calories: "300 Kcal",
                        carbs: "40 carbs",
                        servings: 4,
                        description: "A popular Indian dish made with chickpeas, tomatoes, and aromatic spices."
                    ),
        
                    ]
                ),
    //Italy
        Country(name:"Italy",imageName:"italy",
             Recipes:[Recipe(name: "Carbonara",imageName: "carbonara",ingredient:
                          [
                            Ingredient(name: "Rigatoni", weight: "200g", imageName: "rigatoni", locations: [Location(name: "Supermarket 1, 167 C.so Vittorio Emanuele", coordinate: CLLocationCoordinate2D(latitude: 40.838683, longitude: 14.233333))]),
                            Ingredient(name: "Jowls", weight: "100g", imageName: "jowls", locations: [Location(name: "Supermarket 2, 166 Via Alessandro Manzoni", coordinate: CLLocationCoordinate2D(latitude: 40.821928, longitude: 14.206837    ))]),
                            Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            Ingredient(name: "Pecorino", weight: "1 cup", imageName: "pecorino"),
                            Ingredient(name: "Black pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Olive oli", weight: "to taste", imageName: "oil"),
                            Ingredient(name: "clove garlic", weight: "1", imageName: "garlic")
                           ],
                           instruction:
                            [
                            Instruction(number: 1,
                                         title: "Prepare the Ingredients:",
                                         description: "Bring a pot of salted water to boil for the pasta. Meanwhile, dice the pancetta or guanciale and grate the Pecorino Romano."),
                            Instruction(number: 2,
                                         title: "Cook the Pasta:",
                                         description: "Cook the spaghetti or your preferred pasta in the boiling water following the package instructions until to the tooth"),
                            Instruction(number: 3,
                                         title: "Prepare the Sauce:",
                                         description: "In a bowl, beat the eggs and add the grated Pecorino Romano. Mix well to create a creamy consistency."),
                            Instruction(number: 4,
                                         title: "Cook the Pancetta or Guanciale:",
                                         description: "In a large skillet, cook the pancetta or guanciale over medium heat until crispy."),
                            Instruction(number: 5,
                                         title: "Combine Pasta and Sauce:",
                                         description: "Drain the pasta, reserving some of the cooking water. Add the pasta to the skillet with the pancetta. Mix well."),
                            Instruction(number: 6,
                                         title: "Add the Sauce:",
                                         description: "Off the heat, pour the egg and cheese sauce over the pasta. Mix quickly, and add a bit of cooking water if needed to achieve a creamy consistency."),
                            Instruction(number: 7,
                                         title: "Season with Black Pepper:",
                                         description: "Add plenty of freshly ground black pepper. Carbonara is traditionally generously peppered."),
                            Instruction(number: 8,
                                         title: "Serve:",
                                         description: "Serve the carbonara immediately, garnishing with additional Pecorino Romano if desired."),
                           ],
                           difficulty: 1,
                           time: 30,
                           favourite: false,
                           calories: "565 Kcal",
                           carbs: "65.3 carbs",
                           servings: 2,
                           description: "A classic Roman dish made with spaghetti, eggs, Pecorino Romano cheese, guanciale (cured pork jowl), and black pepper."
                          ),
                    
            Recipe(name: "Risotto", imageName: "risotto",ingredient:
                           [
                            Ingredient(name: "Arborio rice", weight: "1 cup", imageName: "arboriorice"),
                            Ingredient(name: "White wine", weight: "1/2 cup", imageName: "whitevine"),
                            Ingredient(name: "chicken broth", weight: "2", imageName: "chickenbroth"),
                            Ingredient(name: "onion", weight: "1", imageName: "onion"),
                            Ingredient(name: "unsalted butter", weight: "2 tbps", imageName: "tablespoonsun"),
                            Ingredient(name: "olive oil", weight: "2 tbps", imageName: "tablespoonsolive"),
                            Ingredient(name: "Parmesan cheese", weight: "1/2 cup", imageName: "permesancheese"),
                            Ingredient(name: "Black pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Fresh herbs", weight: "such as parsley", imageName: "freshherbs")
                           ],
                           instruction:
                    [
                            Instruction(number: 1,
                                         title: "Prepare the Broth:",
                                         description: "Heat the chicken or vegetable broth in a separate pot and keep it warm over low heat."),
                            Instruction(number: 2,
                                         title: "Sauté the Onion:",
                                         description: "In a large, wide pan, heat the olive oil and 1 tablespoon of butter over medium heat. Add the chopped onion and sauté until it becomes translucent."),
                            Instruction(number: 3,
                                         title: "Toast the Rice:",
                                         description: "Add the Arborio rice to the pan and stir to coat the grains with oil. Toast the rice for a couple of minutes until the edges become slightly translucent."),
                            Instruction(number: 4,
                                         title: "Deglaze with Wine:",
                                         description: "Pour in the white wine and stir until it is mostly absorbed by the rice."),
                            Instruction(number: 5,
                                         title: "Add the Broth:",
                                         description: "Begin adding the warm broth, one ladle at a time, stirring frequently. Allow each ladle of broth to be absorbed before adding the next."),
                            Instruction(number: 6,
                                         title: "Continue Cooking:",
                                         description: "Continue this process until the rice is creamy and cooked to al dente texture. This usually takes about 18-20 minutes."),
                            Instruction(number: 7,
                                         title: "Finish with Butter and Cheese:",
                                         description: "Once the rice is cooked, stir in the remaining tablespoon of butter and the grated Parmesan cheese. Mix until the cheese is melted and the risotto is creamy."),
                            Instruction(number: 8,
                                         title: "Season and Garnish:",
                                         description: "Season with salt and black pepper to taste. You can also garnish with fresh herbs if desired."),
                            Instruction(number: 9,
                                         title: "Serve Immediately:",
                                         description: "Risotto is best served immediately while it's creamy and hot."),
                           ],
                           difficulty: 1,
                           time: 60,
                           favourite: false,
                           calories: "300 Kcal",
                           carbs: "28.30 carbs",
                           servings: 2,
                           description: "A creamy rice dish that can be prepared with various ingredients such as saffron, seafood, mushrooms, or vegetables."
                          ),
                    
            Recipe(name: "Tiramisù", imageName: "tiramisu", ingredient:
                    [
                            Ingredient(name: "Brewed coffee", weight: "2/3 cup", imageName: "coffee"),
                            Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            Ingredient(name: "Granulated sugar", weight: "1/4 cup", imageName: "sugar"),
                            Ingredient(name: "Mascarpone cheese", weight: "1/2 cup", imageName: "mascarpone"),
                            Ingredient(name: "Heavy cream", weight: "1/2 cup", imageName: "heavycream"),
                            Ingredient(name: "Vanilla extract", weight: "1/2 tbps", imageName: "vanillaextract"),
                            Ingredient(name: "Ladyfinger cookies (savoiardi)", weight: "8 to 10", imageName: "savoiardi"),
                            Ingredient(name: "Cocoa powder", weight: "for dusting", imageName: "cocoapowder"),
                            Ingredient(name: "Chocolate shavings", weight: "for garnish", imageName: "chocolateshavings")
                    ],
                           instruction:
                          [
                            Instruction(number: 1,
                                         title: "Prepare Coffee Mixture:",
                                         description: "In a shallow dish, combine the brewed coffee and coffee liqueur if using. Set aside."),
                            Instruction(number: 2,
                                         title: "Make the Mascarpone Cream:",
                                         description: "In a mixing bowl, whisk together egg yolks and sugar until the mixture becomes pale and slightly thick. Add the mascarpone cheese and mix until smooth."),
                            Instruction(number: 3,
                                         title: "Whip the Cream:",
                                         description: "In a separate bowl, whip the heavy cream and vanilla extract until stiff peaks form."),
                            Instruction(number: 4,
                                         title: "Combine:",
                                         description: "Gently fold the whipped cream into the mascarpone mixture until well combined. Be careful not to deflate the whipped cream."),
                            Instruction(number: 5,
                                         title: "Assemble the Tiramisu:",
                                         description: "Dip each ladyfinger into the coffee mixture briefly, making sure not to oversoak them. Arrange a layer of dipped ladyfingers in the bottom of serving glasses or a small dish."),
                            Instruction(number: 6,
                                         title: "Layering:",
                                         description: "Spoon a layer of the mascarpone cream over the ladyfingers."),
                            Instruction(number: 7,
                                         title: "Repeat Layers:",
                                         description: "Repeat the process with another layer of dipped ladyfingers followed by a layer of mascarpone cream."),
                            Instruction(number: 8,
                                         title: "Chill:",
                                         description: "Cover the tiramisu and refrigerate for at least 4 hours or overnight to allow the flavors to meld and the dessert to set."),
                            Instruction(number: 9,
                                         title: "Finish and Serve:",
                                         description: "Before serving, dust the top with cocoa powder and garnish with chocolate shavings or grated chocolate if desired."),
                           ],
                           difficulty: 0,
                           time: 30,
                           favourite: false,
                           calories: "400 Kcal",
                           carbs: "50 carbs",
                           servings: 2,
                           description: "A popular Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa."
                          ),
                    
             Recipe(name: "Bruschetta", imageName: "bruschetta", ingredient:
                        [
                            Ingredient(name: "Bread", weight: "4 slices ", imageName: "bread"),
                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Basil", weight: "1/4 cup", imageName: "basil"),
                            Ingredient(name: "Olive Oil", weight: "2 tbps ", imageName: "oil"),
                            Ingredient(name: "Black pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Balsamic glaze ", weight: "for drizzling", imageName: "balsamicglaz")
                        ],
                           instruction:
                        [
                            Instruction(number: 1,
                                         title: "Prepare the Tomatoes:",
                                         description: "Dice the tomatoes into small, bite-sized pieces. If the tomatoes are too watery, you can remove some of the seeds and liquid."),
                            Instruction(number: 2,
                                         title: "Chop the Basil:",
                                         description: "Chop fresh basil leaves into thin strips. You can also tear the basil for a more rustic look."),
                            Instruction(number: 3,
                                         title: "Prepare the Bread:",
                                         description: "Slice the baguette or Italian bread into 1/2-inch thick slices. You can toast the bread slices in a toaster, on a grill, or in the oven."),
                            Instruction(number: 4,
                                         title: "Rub with Garlic:",
                                         description: "Take the peeled garlic cloves and rub them lightly over one side of each bread slice. This imparts a subtle garlic flavor."),
                            Instruction(number: 5,
                                         title: "Drizzle with Olive Oil:",
                                         description: "Drizzle extra-virgin olive oil over the garlic-rubbed side of each bread slice."),
                            Instruction(number: 6,
                                         title: "Top with Tomatoes and Basil:",
                                         description: "Spoon the diced tomatoes and chopped basil over the olive oil-drizzled side of the bread."),
                            Instruction(number: 7,
                                         title: "Season:",
                                         description: "Sprinkle salt and pepper over the tomatoes and basil. Optionally, you can also add a few drops of balsamic vinegar for extra flavor."),
                            Instruction(number: 8,
                                         title: "Serve:",
                                         description: "Arrange the bruschetta on a serving platter and serve immediately."),
                           ],
                           difficulty: 0,
                           time: 15,
                           favourite: false,
                           calories: "510 Kcal",
                           carbs: "50 carbs",
                           servings: 2,
                           description: "Grilled bread rubbed with garlic, topped with diced tomatoes, fresh basil, and a drizzle of olive oil."
                          )
                 ]
                ),
    //Lebanon
        Country(name: "Lebanon", imageName: "lebanon", Recipes:
                   [Recipe(name: "Hummus", imageName: "hummus",
                           
                     ingredient:
                       [
                           Ingredient(name: "Chickpeas", weight: "1 can", imageName: "chickpeas", locations: [Location(name: "Supermarket 1, 67 Via Napoli", coordinate: CLLocationCoordinate2D(latitude: 40.819555, longitude: 14.144561))]),
                           Ingredient(name: "Well stirred tahini", weight: "1/4 cup", imageName: "tahini", locations: [Location(name: "Supermarket 2, 208 Via Alessandro Manzoni", coordinate: CLLocationCoordinate2D(latitude: 40.818437, longitude: 14.202407))]),
                           Ingredient(name: "Lemon juice", weight: "1/4 cup", imageName: "lemon"),
                           Ingredient(name: "Small garlic clove", weight: "1", imageName: "garlic"),
                           Ingredient(name: "Extra-virgin olive oil", weight: "2 tbsp", imageName: "oil"),
                           Ingredient(name: "Ground cumin", weight: "1/2 tbsp", imageName: "cumin"),
                           Ingredient(name: "Salt", weight: "To taste", imageName: "salt"),
                           Ingredient(name: "Water", weight: "2 or 3 tbsp", imageName: "beansprout"),
                           Ingredient(name: "Dash of ground paprika", weight: "For garnish", imageName: "paprika"),
                           Ingredient(name: "Chopped fresh parsley", weight: "For garnish", imageName: "parsley")
                   
                       ],
                   instruction:
                       [
                   Instruction(number: 1,
                               title: "Whip the Tahini:",
                               description: "In a food processor, combine the tahini and lemon juice. Process for about 15 seconds. This step helps to whip the tahini, making the hummus creamy."),
                   Instruction(number: 2,
                               title: "Add Garlic, Olive Oil, and Cumin:",
                               description: "Add the olive oil, minced garlic, cumin, and a pinch of salt to the whipped tahini. Process for about 30 seconds, or until well combined."),
                   Instruction(number: 3,
                               title: "Add Chickpeas:",
                               description: "Open the can of chickpeas, drain and rinse them in a colander. Add about half of the chickpeas to the food processor and process for 1 minute."),
                   Instruction(number: 4,
                               title: "Add Chickpeas pt.2:",
                               description: "Scrape down the sides and bottom of the bowl, then add the remaining chickpeas and process until smooth and creamy, about 1 to 2 minutes."),
                   Instruction(number: 5,
                               title: "Adjust Consistency:",
                               description: "While the food processor is running, drizzle in 2 to 3 tablespoons of water, until the hummus reaches your desired consistency."),
                   Instruction(number: 6,
                               title: "Adjust Consistency pt.2:",
                               description: "Scrape down the sides of the bowl as needed to make sure everything is blended well."),
                   Instruction(number: 7,
                               title: "Season to Taste:",
                               description: "Taste the hummus and add more salt, lemon juice, or garlic to taste. If you'd like a spicier hummus, you can add more cumin or a dash of paprika"),
                   Instruction(number: 8,
                               title: "Serve:",
                               description: "Serve the hummus with a drizzle of olive oil, a sprinkle of paprika, and some chopped fresh parsley if you like.")
                       ],
                   difficulty: 0,
                   time: 15,
                   favourite: false,
                   calories: "70 Kcal",
                   carbs: "4 carbs",
                   servings: 2,
                   description: "Chickpea dip with tahini, lemon, garlic, and olive oil. Creamy and nutty, perfect with pita or veggies."
                           
                 ),
                    Recipe(name: "Falafel", imageName: "falafel",
                           ingredient: [
                               Ingredient(name: "Dried chickpeas", weight: "1/2 cups", imageName: "chickpeas"),
                               Ingredient(name: "Large onion", weight: "1/2", imageName: "largeonion"),
                               Ingredient(name: "Cloves garlic", weight: "3", imageName: "garlic"),
                               Ingredient(name: "Fresh parsley", weight: "3/4 tbsp", imageName: "parsley"),
                               Ingredient(name: "Ground cumin", weight: "1 1/2 cups", imageName: "cumin"),
                               Ingredient(name: "Ground coriander", weight: "1 1/2 cups", imageName: "corianderleaves"),
                               Ingredient(name: "cayenne pepper", weight: "1/4 tbsp", imageName: "cayennepepper"),
                               Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                               Ingredient(name: "Black pepper", weight: "to taste", imageName: "blackpepper"),
                               Ingredient(name: "Baking powder", weight: "3/4 or 1 1/2 tbsp", imageName: "bakingpowder"),
                               Ingredient(name: "All-purpose flour", weight: "12-18 tbsp", imageName: "all-purposeflour"),
                               Ingredient(name: "Vegetable oil for frying", weight: "to taste", imageName: "oil")
                           ],
                           
                           instruction: [
                               Instruction(number: 1,
                                           title: "Soak Chickpeas:",
                                           description: "Begin by soaking dried chickpeas in cold water overnight. Drain them before use."),
                               Instruction(number: 2,
                                           title: "Blend Ingredients:",
                                           description: "In a food processor, combine chickpeas, chopped onion, parsley, cilantro, garlic, cumin, coriander, cayenne pepper, salt, and pepper. Pulse until the mixture is coarse."),
                               Instruction(number: 3,
                                           title: "Adjust Consistency:",
                                           description: "If the mixture seems too wet, you can add flour and baking powder to help bind it together. Mix well."),
                               Instruction(number: 4,
                                           title: "Chill Mixture:",
                                           description: "Refrigerate the falafel mixture for at least 1-2 hours. This chilling time helps the mixture firm up, making it easier to shape and fry."),
                               Instruction(number: 5,
                                           title: "Shape Falafel:",
                                           description: "Scoop out portions of the chilled mixture and form them into small balls or patties. You can use a falafel scoop or your hands."),
                               Instruction(number: 6,
                                           title: "Preheat Oil:",
                                           description: "Meanwhile, preheat vegetable oil in a deep pan or skillet to 350°F (175°C)."),
                               Instruction(number: 7,
                                           title: "Fry Falafel:",
                                           description: "Carefully place the shaped falafel into the hot oil. Fry until each piece is golden brown on all sides, which typically takes about 3-4 minutes per batch."),
                               Instruction(number: 8,
                                           title: "Drain and Cool:",
                                           description: "Use a slotted spoon to remove the falafel from the oil. Place them on a plate lined with paper towels to absorb excess oil. Allow them to cool slightly."),
                               Instruction(number: 9,
                                           title: "Serve:",
                                           description: "Serve the falafel warm with your preferred sauce (such as tahini or tzatziki) and alongside pita bread or as part of a salad."),
                               Instruction(number: 10,
                                           title: "Enjoy:",
                                           description: "Delight in the flavors of your homemade falafel!"),
                           ],
                           
                           difficulty: 0,
                           time: 60,
                           favourite: false,
                           calories: "75 kcla",
                           carbs: "7 carbs",
                           servings: 3,
                           description: "Chickpea or fava bean balls, deep-fried to perfection with herbs and spices."
                          ),
                    
                    Recipe(name: "Lebanese Lentil Soup", imageName: "lebaneselentilsoup",
                           ingredient: [
                               Ingredient(name: "Brown lentils", weight: "1/2 cup", imageName: "brownlentils"),
                               Ingredient(name: "Small onion", weight: "1", imageName: "largeonion"),
                               Ingredient(name: "Carrot", weight: "1", imageName: "carrot"),
                               Ingredient(name: "Celery stalk", weight: "1", imageName: "celery"),
                               Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                               Ingredient(name: "Chicken broth", weight: "4 cups", imageName: "chickenbroth"),
                               Ingredient(name: "Ground cumin", weight: "1 tbsp", imageName: "cumin"),
                               Ingredient(name: "Ground coriander", weight: "1/2 tbsp", imageName: "corianderleaves"),
                               Ingredient(name: "Ground turmeric", weight: "1/2 tbsp", imageName: "turmeric"),
                               Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                               Ingredient(name: "Pepper", weight: "to taste", imageName: "blackpepper"),
                               Ingredient(name: "Olive oil", weight: "2 tbsp", imageName: "oil"),
                               Ingredient(name: "Lemon juice", weight: "1", imageName: "lemon"),
                               Ingredient(name: "Fresh parsley ", weight: "to taste", imageName: "parsley")
                           ],
                           
                           instruction: [
                               Instruction(number: 1,
                                           title: "Prepare the Lentils:",
                                           description: "In a soup pot, boil 1/2 cup lentils in 2 cups of water.Simmer for 15 minutes until partially cooked. Drain and set aside."),
                               Instruction(number: 2,
                                           title: "Sauté the Aromatics:",
                                           description: "Heat 2 tbsp olive oil in the pot. Add chopped onion, diced carrot, and celery. Sauté for 5 minutes until beginning to soften.l--"),
                               Instruction(number: 3,
                                           title: "Add the Flavors:",
                                           description: "Stir in minced garlic, 1 tsp cumin, 1/2 tsp coriander, and 1/2 tsp turmeric. Cook for another minute until fragrant."),
                               Instruction(number: 4,
                                           title: " Combine with Lentils:",
                                           description: "Return the partially cooked lentils to the pot and mix them with the sautéed vegetables and spices."),
                               Instruction(number: 5,
                                           title: "Add the Broth:",
                                           description: "Pour in 4 cups of vegetable or chicken broth. Bring the mixture to a boil."),
                               Instruction(number: 6,
                                           title: "Simmer to Perfection:",
                                           description: "Add the cooked rice noodles to the wok and pour the dark soy sauce, light soy sauce, oyster sauce, sugar, and white pepper over the noodles. "),
                               Instruction(number: 6,
                                           title: "Simmer to Perfection pt.2:",
                                           description: "Toss everything together until the noodles are well-coated and evenly browned."),
                               Instruction(number: 7,
                                           title: "Season and Serve:",
                                           description: "Season the soup with salt and pepper to taste. Squeeze the juice of 1 lemon into the soup, stirring to incorporate."),
                               Instruction(number: 8,
                                           title: "Garnish and Enjoy:",
                                           description: "Ladle the hot Lebanese Lentil Soup into bowls. Garnish with fresh parsley for a burst of flavor and color.")
                           ],
                           difficulty: 0,
                           time: 60,
                           favourite: false,
                           calories: "250-300 Kcla",
                           carbs: "40-50 carbs",
                           servings: 2,
                           description: "Lebanese Lentil Soup is a delicious and hearty soup that is a staple in Lebanese cuisine. It's known for its warm and comforting flavors"
                          ),
                    
                    Recipe(name: "Lebanese Coffe", imageName: "lebanesecoffe",
                           ingredient: [
                               Ingredient(name: "Water", weight: "2 cups", imageName: "water"),
                               Ingredient(name: "Lebanese coffee", weight: "2-4 tbsp", imageName: "lebanesecoffee"),
                               Ingredient(name: "Sugar (optional)", weight: "to taste", imageName: "sugar"),
                               Ingredient(name: "Cardamom (optional)", weight: "to taste", imageName: "cardamom")
                               ],
                           
                           instruction: [
                               Instruction(number: 1,
                                           title: "Measure the Water:",
                                           description: "In a small coffee pot or ibrik, measure 2 cups of water."),
                               Instruction(number: 2,
                                           title: "Add Coffee Grounds:",
                                           description: "Add 2-4 tablespoons of finely ground Lebanese coffee to the water. The amount can be adjusted for preferred strength."),
                               Instruction(number: 3,
                                           title: "Enhance with Cardamom (Optional):",
                                           description: "Optionally, you can add a pinch of cardamom to the pot for an extra layer of flavor.."),
                               Instruction(number: 4,
                                           title: "Sweeten to Taste (Optional):",
                                           description: "If you prefer sweetened coffee, add sugar to the pot according to your taste. Stir gently to dissolve."),
                               Instruction(number: 5,
                                           title: "Heat Slowly:",
                                           description: "Place the pot on the stove over low heat."),
                               Instruction(number: 6,
                                           title: "Bring to a Boil:",
                                           description: "Slowly bring the coffee to a gentle boil, taking care not to let it overflow."),
                               Instruction(number: 7,
                                           title: "Create Foam:",
                                           description: "As the coffee starts to boil, foam will form on the surface. Allow it to boil for a few seconds to create a layer of foam."),
                               Instruction(number: 8,
                                           title: "Remove from Heat:",
                                           description: "Once the foam is formed, carefully remove the pot from the heat source."),
                               Instruction(number: 9,
                                           title: "Let Settle:",
                                           description: "Allow the coffee to sit for a moment, allowing the coffee grounds to settle to the bottom of the pot."),
                               Instruction(number: 10,
                                           title: "Serve:",
                                           description: "Pour the Lebanese coffee into small cups, ensuring that each cup gets a share of the foam on top.")
                               
                           ],
                           difficulty: 1,
                           time: 15,
                           favourite: false,
                           calories: "5 Kcla",
                           carbs: "1 carbs",
                           servings: 3,
                           description: "Strong and aromatic coffee, similar to Turkish and Arabic coffee, popular in Lebanon and the Middle East."
                          )
               ]
             ),
    //Marocco
        Country(name: "Marocco", imageName: "marocco", Recipes:
                   [
                       Recipe(name: "Tagine Chicken", imageName: "taginechicken", ingredient:
                           [
                               Ingredient(name: "Chicken", weight: "1.5 kg", imageName: "chicken", locations: [Location(name: "Supermarket 1, 100 Viale Maria Bakunin", coordinate: CLLocationCoordinate2D(latitude: 40.838022, longitude: 14.188846))]),
                               Ingredient(name: "Cumin", weight: "2 tsp", imageName: "cumin", locations: [Location(name: "Supermarket 2, 70 Via delle Repubbliche Marinare", coordinate: CLLocationCoordinate2D(latitude: 40.844465, longitude: 14.305242))]),
                               Ingredient(name: "Preserved Lemons", weight: "2", imageName: "lemon"),
                               Ingredient(name: "Onions", weight: "2", imageName: "onion"),
                               Ingredient(name: "Coriander", weight: "1 tbsp", imageName: "coriander"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Marinate Chicken:",
                                            description: "Rub chicken with cumin, coriander, and salt. Marinate for 2 hours."),
                               Instruction(number: 2,
                                            title: "Sear and Add Ingredients:",
                                            description: "Sear chicken, add sliced onions, and place preserved lemons on top."),
                               Instruction(number: 3,
                                            title: "Simmer in Tagine:",
                                            description: "Simmer in a tagine until chicken is tender and flavors meld."),
                               Instruction(number: 4,
                                            title: "Garnish and Serve:",
                                            description: "Garnish with fresh coriander and serve with couscous."),
                           ],
                           difficulty: 2,
                           time: 60,
                           favourite: false,
                           calories: "450 Kcal",
                           carbs: "30 carbs",
                           servings: 4,
                           description: "A traditional Moroccan tagine with succulent chicken, preserved lemons, and aromatic spices."
                       ),
                       Recipe(name: "Couscous with Lamb", imageName: "couscouslamb", ingredient:
                           [
                               Ingredient(name: "Lamb", weight: "800g", imageName: "lamb"),
                               Ingredient(name: "Couscous", weight: "2 cups", imageName: "couscous"),
                               Ingredient(name: "Carrots", weight: "3", imageName: "carrot"),
                               Ingredient(name: "Zucchini", weight: "2", imageName: "zucchini"),
                               Ingredient(name: "Chickpeas", weight: "1 can", imageName: "chickpeas"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Cook Lamb:",
                                            description: "Brown lamb in a pot with olive oil, then add chopped onions."),
                               Instruction(number: 2,
                                            title: "Add Vegetables:",
                                            description: "Add carrots, zucchini, and chickpeas. Cook until vegetables are tender."),
                               Instruction(number: 3,
                                            title: "Prepare Couscous:",
                                            description: "Cook couscous separately according to package instructions."),
                               Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Serve lamb and vegetables over fluffy couscous."),
                           ],
                           difficulty: 1,
                           time: 60,
                           favourite: false,
                           calories: "380 Kcal",
                           carbs: "40 carbs",
                           servings: 6,
                           description: "A delightful Moroccan dish with tender lamb, colorful vegetables, and fluffy couscous."
                       ),
                       Recipe(name: "Harira Soup", imageName: "harira", ingredient:
                           [
                               Ingredient(name: "Red Lentils", weight: "1 cup", imageName: "lentils"),
                               Ingredient(name: "Tomatoes", weight: "4", imageName: "tomatoes"),
                               Ingredient(name: "Chickpeas", weight: "1 can", imageName: "chickpeas"),
                               Ingredient(name: "Coriander", weight: "2 tbsp", imageName: "coriander"),
                               Ingredient(name: "Cinnamon", weight: "1 tsp", imageName: "cinnamon"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Cook Lentils:",
                                            description: "Simmer red lentils in a pot with water until partially cooked."),
                               Instruction(number: 2,
                                            title: "Add Ingredients:",
                                            description: "Add diced tomatoes, chickpeas, coriander, and cinnamon. Simmer until lentils are tender."),
                               Instruction(number: 3,
                                            title: "Season and Simmer:",
                                            description: "Season with salt and pepper. Simmer for additional flavor."),
                               Instruction(number: 4,
                                            title: "Serve Warm:",
                                            description: "Serve the hearty Harira soup warm with crusty bread."),
                           ],
                           difficulty: 2,
                           time: 30,
                           favourite: false,
                           calories: "300 Kcal",
                           carbs: "35 carbs",
                           servings: 4,
                           description: "A comforting Moroccan soup with red lentils, tomatoes, chickpeas, and aromatic spices."
                       ),
                       Recipe(name: "Moroccan Lamb Tagine", imageName: "lambtagine", ingredient:
                           [
                               Ingredient(name: "Lamb Shoulder", weight: "1.5 kg", imageName: "lamb"),
                               Ingredient(name: "Dried Apricots", weight: "1 cup", imageName: "apricots"),
                               Ingredient(name: "Almonds", weight: "1/2 cup", imageName: "almonds"),
                               Ingredient(name: "Cinnamon Sticks", weight: "2", imageName: "cinnamon"),
                               Ingredient(name: "Ras el Hanout", weight: "2 tbsp", imageName: "raselhanout"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Brown Lamb:",
                                            description: "Brown lamb in a tagine with olive oil. Add chopped onions and Ras el Hanout."),
                               Instruction(number: 2,
                                            title: "Add Ingredients:",
                                            description: "Add dried apricots, almonds, and cinnamon sticks."),
                               Instruction(number: 3,
                                            title: "Simmer Slowly:",
                                            description: "Simmer the tagine slowly until the lamb is tender."),
                               Instruction(number: 4,
                                            title: "Serve with Couscous:",
                                            description: "Serve the fragrant lamb tagine with fluffy couscous."),
                           ],
                           difficulty: 2,
                           time: 120,
                           favourite: false,
                           calories: "480 Kcal",
                           carbs: "25 carbs",
                           servings: 6,
                           description: "An exotic Moroccan tagine with succulent lamb, sweet apricots, and aromatic spices."
                       ),
                       Recipe(name: "Mint Tea", imageName: "minttea", ingredient:
                           [
                               Ingredient(name: "Green Tea Leaves", weight: "2 tbsp", imageName: "greentea"),
                               Ingredient(name: "Fresh Mint Leaves", weight: "1 bunch", imageName: "mintleaves"),
                               Ingredient(name: "Sugar", weight: "4 tbsp", imageName: "sugar"),
                               Ingredient(name: "Boiling Water", weight: "4 cups", imageName: "boilingwater"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Brew Green Tea:",
                                            description: "Steep green tea leaves in boiling water for 3-5 minutes."),
                               Instruction(number: 2,
                                            title: "Add Mint and Sugar:",
                                            description: "Add fresh mint leaves and sugar. Stir until sugar dissolves."),
                               Instruction(number: 3,
                                            title: "Strain and Serve:",
                                            description: "Strain the tea into cups. Serve hot with mint garnish."),
                               Instruction(number: 4,
                                            title: "Enjoy:",
                                            description: "Enjoy the refreshing Moroccan mint tea."),
                           ],
                           difficulty: 0,
                           time: 15,
                           favourite: false,
                           calories: "50 Kcal",
                           carbs: "12 carbs",
                           servings: 4,
                           description: "A classic Moroccan mint tea, sweetened and infused with fresh mint leaves."
                       )

                   ]
                ),
     //Mexico
        Country(name: "Mexico",
                 imageName: "mexico",
                 Recipes:
                [
                    Recipe(name: "Tacos", imageName: "tacos",
                     ingredient:
                     [
                        Ingredient(name: "Ground beef", weight: "225g", imageName: "groundbeef", locations: [Location(name: "Supermarket 1, 25 Via S. Gennaro Agnano", coordinate: CLLocationCoordinate2D(latitude: 40.823195, longitude: 14.142597))]),
                        Ingredient(name: "Onion", weight: "1", imageName: "onion", locations: [Location(name: "Supermarket 2, 182 Strada Provinciale Cuma Licola ", coordinate: CLLocationCoordinate2D(latitude: 40.860148, longitude: 14.061463    ))]),
                        Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                        Ingredient(name: "Taco seasoning", weight: "1 tbps", imageName: "tacoseasoning"),
                        Ingredient(name: "Flour tortillas", weight: "4", imageName: "flourtortillas"),
                        Ingredient(name: "Shredded lettuce", weight: "1 cup", imageName: "shreddedlettuce"),
                        Ingredient(name: "Tomatoes", weight: "1 cup", imageName: "tomatoes"),
                        Ingredient(name: "Cheddar", weight: "1 cup", imageName: "cheddar"),
                        Ingredient(name: "Salsa", weight: "1/2 cup", imageName: "salt"),
                        Ingredient(name: "Sour cream", weight: "1/2 cup", imageName: "sourcream"),
                        Ingredient(name: "Fresh cilantro", weight: "1/4 cup", imageName: "freshcilantro"),
                        Ingredient(name: "Lime wedges", weight: "2", imageName: "limewedges")
                      ],
                        instruction:
                      [
                        Instruction(number: 1, title: "Cook Beef:", description: "Sauté onions until soft. Add beef, cook until browned. Drain excess fat. Add garlic, taco seasoning, salt, and pepper."),
                        Instruction(number: 2, title: "Prepare Toppings:", description: "Shred lettuce, dice tomatoes, grate cheese."),
                        Instruction(number: 3, title: "Warm Taco Shells:", description: "Warm hard shells in the oven or soft tortillas in a skillet."),
                        Instruction(number: 4, title: "Assemble Tacos:", description: "Fill shells with seasoned beef. Add toppings as desired."),
                        Instruction(number: 5, title: "Serve:", description: "Arrange on a platter, serve with lime wedges."),
                        Instruction(number: 6, title: " ", description: "Feel free to customize the ingredients based on your taste preferences. You can also explore other protein options like chicken, pork, or vegetarian fillings."),
                        ],
                           difficulty: 0,
                           time: 30,
                           favourite: false,
                           calories: "850-950 Kcal",
                           carbs: "90-120 carbs",
                           servings: 2,
                           description: "A harmony of seasoned meat, fresh toppings, and a warm tortilla for a delightful burst of Mexican flavors."
                          ),
                    
                    Recipe(name: "Guacamole", imageName: "guacamole",
                        ingredient:
                        [
                            Ingredient(name: "Avocado", weight: "2", imageName: "avocado"),
                            Ingredient(name: "Lime", weight: "1", imageName: "limewedges"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Ground cumin", weight: "1/2 tsp", imageName: "groundcumin"),
                            Ingredient(name: "Cayenne pepper", weight: "1/2 tsp", imageName: "cayennepepper"),
                            Ingredient(name: "Lime wedges", weight: "2", imageName: "limewedges"),
                            Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                            Ingredient(name: "Fresh cilantro", weight: "2 tsp", imageName: "freshcilantro")
                            
                        ],
                           instruction:
                            [
                                Instruction(number: 1, title: "Prepare the Avocados:", description: "Cut the avocados in half and remove the pits. Scoop the flesh into a mixing bowl."),
                                Instruction(number: 2, title: "Mash the Avocados:", description: "Use a fork or potato masher to mash the avocados to your desired consistency. Some people prefer chunky guacamole, while others like it smoother."),
                                Instruction(number: 3, title: "Add Lime Juice:", description: "Squeeze the juice of one lime over the mashed avocados. Lime not only adds flavor but also helps prevent the guacamole from browning."),
                                Instruction(number: 4, title: "Season:", description: "Add salt, ground cumin, and cayenne pepper (if using) to the mashed avocados. Start with a small amount of salt and adjust to taste."),
                                Instruction(number: 5, title: "Add Diced Onion:", description: "Stir in the finely diced onion. Red onion is commonly used for its mild flavor and vibrant color."),
                                Instruction(number: 6, title: "Add Diced Tomatoes:", description: "Add the diced tomatoes to the mixture. If you prefer less liquid, you can scoop out and discard the seeds before dicing."),
                                Instruction(number: 7, title: "Add Minced Garlic:", description: "Add the minced garlic to the guacamole. Adjust the amount to your taste preferences."),
                                Instruction(number: 8, title: "Add Chopped Cilantro:", description: "Finally, stir in the chopped fresh cilantro. Cilantro adds a fresh and herby flavor to the guacamole."),
                                Instruction(number: 9, title: "Adjust Seasonings:", description: "Taste the guacamole and adjust the lime, salt, or other seasonings as needed. You can also add more cayenne if you want extra heat."),
                                Instruction(number: 10, title: "Serve:", description: "Serve the guacamole immediately with tortilla chips or as a topping for tacos, nachos, or any dish of your choice."),
                           ],
                           difficulty: 0,
                           time: 15,
                           favourite: false,
                           calories: "582 Kcal",
                           carbs: "71 carbs",
                           servings: 2,
                           description: "A simple blend of ripe avocados, tomatoes, onions, cilantro, lime juice, and a dash of salt, creating a creamy and flavorful dip or topping."
                          ),
                    Recipe(name: "Enchiladas",
                           imageName: "enchiladas",
                           ingredient: [
                            Ingredient(name: "Cooked shredded chicken", weight: "1 cup", imageName: "cookedshreddedchicken"),
                            Ingredient(name: "Black beans", weight: "1/2 cup", imageName: "blackbeans"),
                            Ingredient(name: "Corn kernels", weight: "1/2 cup", imageName: "cornkernels"),
                            Ingredient(name: "Bell peppers", weight: "1/2 cup", imageName: "bellpeppers"),
                            Ingredient(name: "Red onion", weight: "1/4 cup", imageName: "onion"),
                            Ingredient(name: "Ground cumin", weight: "1/2 tsp", imageName: "groundcumin"),
                            Ingredient(name: "Chili powder", weight: "1/2 tsp", imageName: "chilipowder"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Cheddar", weight: "1 cup", imageName: "cheddar"),
                            Ingredient(name: "Red enchilada sauce", weight: "1 cup", imageName: "redenchiladasauce"),
                            Ingredient(name: "Flour tortillas", weight: "4", imageName: "flourtortillas"),
                            Ingredient(name: "Fresh cilantro", weight: "for garnish", imageName: "freshcilantro"),
                            Ingredient(name: "Sour cream", weight: "optional", imageName: "sourcream"),
                           ],
                           instruction:
                            [
                            Instruction(number: 1,
                                         title: "Preheat the Oven:",
                                         description: "Preheat your oven to 375°F (190°C)."),
                            Instruction(number: 2,
                                         title: "Prepare the Filling:",
                                         description: "In a bowl, combine shredded chicken, black beans, corn, diced bell peppers, red onion, ground cumin, chili powder, salt, and pepper. Mix well."),
                            Instruction(number: 3,
                                         title: "Assemble the Enchiladas:",
                                         description: "Warm the tortillas in the microwave or on a dry skillet to make them pliable."),
                            Instruction(number: 4,
                                         title: "Baking Dish Assembly:",
                                         description: " Place a portion of the filling mixture onto each tortilla, roll them up, and place them seam-side down in a baking dish."),
                            Instruction(number: 5,
                                         title: "Add Enchilada Sauce:",
                                         description: "Pour the enchilada sauce evenly over the rolled tortillas."),
                            Instruction(number: 6,
                                         title: "Add Cheese:",
                                         description: "Sprinkle shredded cheese over the top of the enchiladas."),
                            Instruction(number: 7,
                                         title: "Bake:",
                                         description: "Bake in the preheated oven for about 20 minutes or until the cheese is melted and bubbly."),
                            Instruction(number: 8,
                                         title: "Garnish and Serve:",
                                         description: "Remove from the oven and sprinkle chopped cilantro on top. Serve the enchiladas with sour cream if desired."),
                            Instruction(number: 9,
                                         title: " ",
                                         description: "This recipe is customizable, so feel free to adjust the filling ingredients or add additional toppings according to your preferences. Enjoy your chicken enchiladas!"),
                            ],
                           difficulty: 1,
                           time: 60,
                           favourite: false,
                           calories: "1295 Kcal",
                           carbs: "114 carbs",
                           servings: 2,
                           description: "Rolled tortillas filled with tasty ingredients, topped with chili sauce and cheese for a delicious Mexican delight."
                          ),
                    Recipe(name: "Chiles Rellenos",
                           imageName: "chilesrellenos",
                           ingredient: [
                            Ingredient(name: "Poblano peppers", weight: "2", imageName: "poblanopeppers"),
                            Ingredient(name: "Shredded cheese ", weight: "1 cup", imageName: "shreddedcheese"),
                            Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            Ingredient(name: "All-purpose flour", weight: "1/4 cup", imageName: "all-purposeflour"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Tomato sauce", weight: "1/4 cup", imageName: "tomatosauce"),
                            Ingredient(name: "Cloves garlic", weight: "1", imageName: "garlic"),
                            Ingredient(name: "Ground cumin", weight: "1/2 tsp", imageName: "groundcumin"),
                            Ingredient(name: "Vegetable oil", weight: "for frying", imageName: "oil"),
                            Ingredient(name: "Fresh cilantro", weight: "for garnish", imageName: "freshcilantro"),
                            Ingredient(name: "Sour cream", weight: "optional", imageName: "sourcream"),
                           ],
                           instruction: [
                            Instruction(number: 1,
                                         title: "Roast and Peel the Peppers:",
                                         description: "Roast poblano peppers over an open flame or under the broiler until the skin is charred. Place them in a sealed plastic bag to steam, then peel off the skin."),
                            Instruction(number: 2,
                                         title: "Make a Vertical Incision:",
                                         description: "Make a vertical incision on each poblano, creating a pocket. Remove seeds while keeping the stem intact."),
                            Instruction(number: 3,
                                         title: "Prepare the Filling:",
                                         description: "Stuff each poblano with shredded cheese or a mix of cheese and cooked ground meat."),
                            Instruction(number: 4,
                                         title: "Close the Poblanos::",
                                         description: "Use toothpicks to secure the opening of each poblano to keep the filling in."),
                            Instruction(number: 5,
                                         title: "Prepare the Batter:",
                                         description: "In a bowl, beat egg whites until stiff peaks form. In another bowl, whisk together egg yolks, flour, baking powder, and salt. Gently fold in the beaten egg whites."),
                            Instruction(number: 6,
                                         title: "Coat Poblanos in Batter:",
                                         description: "Dip each stuffed poblano into the batter, ensuring an even coating."),
                            Instruction(number: 7,
                                         title: "Fry the Chiles Rellenos:",
                                         description: "In a large skillet, heat vegetable oil over medium-high heat. Fry the battered poblanos until golden brown on all sides. Place them on a paper towel to drain excess oil."),
                            Instruction(number: 8,
                                         title: "Prepare the Sauce:",
                                        description: "In a saucepan, sauté chopped onion and garlic. Add tomato sauce, salt, and pepper. Simmer for 10-15 minutes."),
                            Instruction(number: 9,
                                         title: "Serve:",
                                         description: "Remove toothpicks from Chiles Rellenos. Pour tomato sauce over them. Serve immediately."),
                            Instruction(number: 10,
                                         title: "Enjoy:",
                                         description: "Enjoy your homemade Chiles Rellenos with a side of rice or beans!"),
                            
                            ],
                           difficulty: 1,
                           time: 120,
                           favourite: false,
                           calories: "1010 Kcal",
                           carbs: "76,5 carbs",
                           servings: 2,
                           description: "Golden-fried chili peppers, stuffed with cheese or meat, served with tomato sauce."
                          ),
                    ]
                 ),
    //Nigeria
        Country(name: "Nigeria", imageName: "nigeria", Recipes:
                    [
                        Recipe(name: "Jollof Rice", imageName: "jollofrice", ingredient:
                            [
                                Ingredient(name: "Rice", weight: "2 cups", imageName: "rice", locations: [Location(name: "Supermarket 1, 112 Via Henri Matisse", coordinate: CLLocationCoordinate2D(latitude: 40.844886, longitude: 14.324308))]),
                                Ingredient(name: "Tomatoes", weight: "4", imageName: "tomatoes", locations: [Location(name: "Supermarket 2, 20 Via Salvatore Fergola", coordinate: CLLocationCoordinate2D(latitude: 40.856890, longitude: 14.146301))]),
                                Ingredient(name: "Red Bell Pepper", weight: "2", imageName: "bellpeppers"),
                                Ingredient(name: "Onions", weight: "2", imageName: "onion"),
                                Ingredient(name: "Chicken Stock", weight: "1 cup", imageName: "chickenbroth"),
                            ],
                            instruction:
                            [
                                Instruction(number: 1,
                                             title: "Prepare Base:",
                                             description: "Blend tomatoes, red bell pepper, and onions to make a smooth base."),
                                Instruction(number: 2,
                                             title: "Cook Base:",
                                             description: "Cook the base with rice and chicken stock until rice is tender."),
                                Instruction(number: 3,
                                             title: "Fluff and Serve:",
                                             description: "Fluff the rice and serve hot with grilled chicken or fish."),
                                Instruction(number: 4,
                                             title: "Enjoy:",
                                             description: "Enjoy the vibrant flavors of Nigerian Jollof Rice."),
                            ],
                            difficulty: 2,
                            time: 30,
                            favourite: false,
                            calories: "300 Kcal",
                            carbs: "40 carbs",
                            servings: 6,
                            description: "A delicious Nigerian one-pot rice dish with a rich blend of flavors."
                        ),
                        Recipe(name: "Egusi Soup", imageName: "egusisoup", ingredient:
                            [
                                Ingredient(name: "Egusi Seeds", weight: "1 cup", imageName: "egusiseeds"),
                                Ingredient(name: "Spinach", weight: "2 cups", imageName: "spinach"),
                                Ingredient(name: "Tomato Paste", weight: "3 tbsp", imageName: "tomatopaste"),
                                Ingredient(name: "Palm Oil", weight: "1/2 cup", imageName: "palmoil"),
                                Ingredient(name: "Meat (Beef/Chicken)", weight: "500g", imageName: "chicken"),
                            ],
                            instruction:
                            [
                                Instruction(number: 1,
                                             title: "Blend Seeds:",
                                             description: "Blend egusi seeds until smooth, then mix with water to form a paste."),
                                Instruction(number: 2,
                                             title: "Cook Meat:",
                                             description: "Cook meat with tomato paste, palm oil, and egusi paste."),
                                Instruction(number: 3,
                                             title: "Add Greens:",
                                             description: "Add chopped spinach and cook until greens are wilted."),
                                Instruction(number: 4,
                                             title: "Serve Hot:",
                                             description: "Serve hot with fufu or rice."),
                            ],
                            difficulty: 3,
                            time: 60,
                            favourite: false,
                            calories: "400 Kcal",
                            carbs: "20 carbs",
                            servings: 4,
                            description: "A hearty Nigerian soup made with melon seeds, spinach, and meat."
                        ),
                        Recipe(name: "Pounded Yam and Egusi Soup", imageName: "poundedyam", ingredient:
                            [
                                Ingredient(name: "Yam", weight: "1 kg", imageName: "yam"),
                                Ingredient(name: "Egusi Seeds", weight: "1 cup", imageName: "egusiseeds"),
                                Ingredient(name: "Leafy Vegetables", weight: "2 cups", imageName: "vegetables"),
                                Ingredient(name: "Palm Oil", weight: "1/2 cup", imageName: "palmoil"),
                                Ingredient(name: "Meat (Goat/Beef)", weight: "500g", imageName: "beef"),
                            ],
                            instruction:
                            [
                                Instruction(number: 1,
                                             title: "Cook Yam:",
                                             description: "Peel, dice, and boil yam until soft. Pound until smooth."),
                                Instruction(number: 2,
                                             title: "Prepare Egusi Soup:",
                                             description: "Follow the Egusi Soup recipe above."),
                                Instruction(number: 3,
                                             title: "Serve:",
                                             description: "Serve pounded yam with a generous portion of egusi soup."),
                                Instruction(number: 4,
                                             title: "Enjoy:",
                                             description: "Enjoy this classic Nigerian dish."),
                            ],
                            difficulty: 3,
                            time: 60,
                            favourite: false,
                            calories: "450 Kcal",
                            carbs: "30 carbs",
                            servings: 4,
                            description: "A Nigerian delicacy featuring pounded yam paired with rich egusi soup."
                        ),
                        Recipe(name: "Chinchinga", imageName: "chinchinga", ingredient:
                            [
                                Ingredient(name: "Beef Cubes", weight: "500g", imageName: "beef"),
                                Ingredient(name: "Bell Peppers", weight: "3", imageName: "bellpeppers"),
                                Ingredient(name: "Onions", weight: "2", imageName: "onion"),
                                Ingredient(name: "Suya Spice", weight: "2 tbsp", imageName: "suyaspice"),
                                Ingredient(name: "Skewers", weight: "Wooden or Metal", imageName: "skewers"),
                            ],
                            instruction:
                            [
                                Instruction(number: 1,
                                             title: "Prepare Marinade:",
                                             description: "Mix suya spice with oil to form a marinade."),
                                Instruction(number: 2,
                                             title: "Marinate Beef:",
                                             description: "Coat beef cubes with the suya marinade and let sit for at least 1 hour."),
                                Instruction(number: 3,
                                             title: "Assemble Kebabs:",
                                             description: "Thread marinated beef, bell peppers, and onions onto skewers."),
                                Instruction(number: 4,
                                             title: "Grill or Roast:",
                                             description: "Grill or roast kebabs until beef is cooked and vegetables are charred."),
                            ],
                            difficulty: 2,
                            time: 30,
                            favourite: false,
                            calories: "350 Kcal",
                            carbs: "15 carbs",
                            servings: 4,
                            description: "Delicious Nigerian kebabs with spiced beef, bell peppers, and onions."
                        ),
                        Recipe(name: "Moimoi", imageName: "moimoi", ingredient:
                            [
                                Ingredient(name: "Black-Eyed Peas", weight: "2 cups", imageName: "blackeyedpeas"),
                                Ingredient(name: "Pepper", weight: "3", imageName: "pepper"),
                                Ingredient(name: "Onions", weight: "2", imageName: "onion"),
                                Ingredient(name: "Vegetable Oil", weight: "1/4 cup", imageName: "oil"),
                                Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            ],
                            instruction:
                            [
                                Instruction(number: 1,
                                             title: "Prepare Beans:",
                                             description: "Soak black-eyed peas overnight. Blend with pepper and onions."),
                                Instruction(number: 2,
                                             title: "Season Mixture:",
                                             description: "Season blended mixture with salt and vegetable oil. Add beaten eggs."),
                                Instruction(number: 3,
                                             title: "Steam Moimoi:",
                                             description: "Pour mixture into greased molds and steam until set."),
                                Instruction(number: 4,
                                             title: "Serve Warm:",
                                             description: "Serve warm with a side of spicy sauce."),
                            ],
                            difficulty: 2,
                            time: 60,
                            favourite: false,
                            calories: "250 Kcal",
                            carbs: "20 carbs",
                            servings: 6,
                            description: "A Nigerian delight, steamed bean pudding with a rich blend of spices and flavors."
                        )
                    ]
                 ),
    //Sweden
        Country(name: "Sweden", imageName: "sweden", Recipes:
                   [
                       Recipe(name: "Kanelbullar", imageName: "kanelbullar", ingredient:
                           [
                               Ingredient(name: "Flour", weight: "500g", imageName: "all-purposeflour", locations: [Location(name: "Supermarket 1, 167 C.so Vittorio Emanuele    ", coordinate: CLLocationCoordinate2D(latitude: 40.838683, longitude: 14.233333))]),
                               Ingredient(name: "Milk", weight: "300ml", imageName: "milk", locations: [Location(name: "Supermarket 1, 166 Via Alessandro Manzoni", coordinate: CLLocationCoordinate2D(latitude: 40.821928, longitude: 14.206837))]),
                               Ingredient(name: "Yeast", weight: "50g", imageName: "yeast"),
                               Ingredient(name: "Sugar", weight: "100g", imageName: "sugar"),
                               Ingredient(name: "Butter", weight: "100g", imageName: "butter"),
                               Ingredient(name: "Cinnamon", weight: "2 tbsp", imageName: "cinnamon"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Prepare the Dough:",
                                            description: "Mix flour, milk, yeast, and sugar to create a soft dough. Let it rise for an hour."),
                               Instruction(number: 2,
                                            title: "Roll and Fill:",
                                            description: "Roll the dough into a rectangle, spread softened butter and sprinkle cinnamon on top."),
                               Instruction(number: 3,
                                            title: "Shape the Buns:",
                                            description: "Roll the dough into a log and slice it into pieces. Let them rise for 30 minutes."),
                               Instruction(number: 4,
                                            title: "Bake:",
                                            description: "Bake the kanelbullar in the oven at 200°C until they turn golden brown."),
                               Instruction(number: 5,
                                            title: "Serve:",
                                            description: "Serve the kanelbullar warm, preferably with coffee or tea."),
                           ],
                           difficulty: 1,
                           time: 120,
                           favourite: false,
                           calories: "300 Kcal",
                           carbs: "45 carbs",
                           servings: 8,
                           description: "A classic Swedish pastry with a cinnamon and sugar filling, topped with pearl sugar."
                       ),
                       Recipe(name: "Köttbullar", imageName: "köttbullar", ingredient:
                           [
                               Ingredient(name: "Ground Beef", weight: "500g", imageName: "groundbeef"),
                               Ingredient(name: "Breadcrumbs", weight: "100g", imageName: "breadcrumbs"),
                               Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                               Ingredient(name: "Egg", weight: "1", imageName: "eggs"),
                               Ingredient(name: "Cream", weight: "50ml", imageName: "cream"),
                               Ingredient(name: "Butter", weight: "50g", imageName: "butter"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Mix the Ingredients:",
                                            description: "Combine ground beef, breadcrumbs, finely chopped onion, egg, and cream. Season with salt and pepper."),
                               Instruction(number: 2,
                                            title: "Shape the Meatballs:",
                                            description: "Shape the mixture into small, round meatballs."),
                               Instruction(number: 3,
                                            title: "Cook the Meatballs:",
                                            description: "Pan-fry the köttbullar in butter until they are browned and cooked through."),
                               Instruction(number: 4,
                                            title: "Serve:",
                                            description: "Serve the köttbullar with lingonberry sauce and mashed potatoes."),
                           ],
                           difficulty: 1,
                           time: 60,
                           favourite: false,
                           calories: "400 Kcal",
                           carbs: "15 carbs",
                           servings: 4,
                           description: "Traditional Swedish meatballs made with a blend of ground beef and pork."
                       ),
                       Recipe(name: "Sill och Potatis", imageName: "sillochpotatis", ingredient:
                           [
                               Ingredient(name: "Herring", weight: "500g", imageName: "herring"),
                               Ingredient(name: "Potatoes", weight: "600g", imageName: "potatoes"),
                               Ingredient(name: "Sour Cream", weight: "200g", imageName: "sourcream"),
                               Ingredient(name: "Red Onion", weight: "1", imageName: "onion"),
                               Ingredient(name: "Dill", weight: "1/4 cup", imageName: "dill"),
                               Ingredient(name: "Salt", weight: "1 tsp", imageName: "salt"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Prepare the Ingredients:",
                                            description: "Boil the potatoes until tender. Slice the herring and red onion."),
                               Instruction(number: 2,
                                            title: "Assemble the Dish:",
                                            description: "Layer potatoes, herring, and red onion in a serving dish."),
                               Instruction(number: 3,
                                            title: "Add Sour Cream:",
                                            description: "Top with a generous amount of sour cream and sprinkle with chopped dill."),
                               Instruction(number: 4,
                                            title: "Chill and Serve:",
                                            description: "Chill the dish in the fridge for a few hours before serving."),
                           ],
                           difficulty: 0,
                           time: 30,
                           favourite: false,
                           calories: "250 Kcal",
                           carbs: "30 carbs",
                           servings: 6,
                           description: "A traditional Swedish dish featuring pickled herring, potatoes, and sour cream."
                       ),
                       Recipe(name: "Gravlax", imageName: "gravlax", ingredient:
                           [
                               Ingredient(name: "Salmon Fillet", weight: "800g", imageName: "fish"),
                               Ingredient(name: "Sugar", weight: "100g", imageName: "sugar"),
                               Ingredient(name: "Salt", weight: "100g", imageName: "salt"),
                               Ingredient(name: "Dill", weight: "1/2 cup", imageName: "dill"),
                               Ingredient(name: "Black Peppercorns", weight: "1 tbsp", imageName: "peppercorns"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Prepare the Marinade:",
                                            description: "Mix sugar, salt, chopped dill, and crushed peppercorns."),
                               Instruction(number: 2,
                                            title: "Marinate the Salmon:",
                                            description: "Coat the salmon fillet with the marinade and let it cure in the fridge for 48 hours."),
                               Instruction(number: 3,
                                            title: "Slice and Serve:",
                                            description: "Slice the gravlax thinly and serve with mustard sauce and bread."),
                           ],
                           difficulty: 1,
                           time: 120,
                           favourite: false,
                           calories: "300 Kcal",
                           carbs: "0 carbs",
                           servings: 10,
                           description: "A traditional Swedish dish of cured salmon, infused with dill and spices."
                       ),
                       Recipe(name: "Smörgåstårta", imageName: "smorgastarta", ingredient:
                           [
                               Ingredient(name: "Bread Slices", weight: "20", imageName: "bread"),
                               Ingredient(name: "Smoked Salmon", weight: "200g", imageName: "fish"),
                               Ingredient(name: "Shrimp", weight: "200g", imageName: "shrimp"),
                               Ingredient(name: "Mayonnaise", weight: "200ml", imageName: "mayo"),
                               Ingredient(name: "Sour Cream", weight: "200ml", imageName: "sourcream"),
                               Ingredient(name: "Cucumber", weight: "1", imageName: "cucumber"),
                               Ingredient(name: "Lemon", weight: "1", imageName: "lemon"),
                           ],
                           instruction:
                           [
                               Instruction(number: 1,
                                            title: "Layer the Cake:",
                                            description: "Layer bread slices with a mixture of mayonnaise and sour cream, smoked salmon, and shrimp."),
                               Instruction(number: 2,
                                            title: "Decorate:",
                                            description: "Garnish with cucumber slices and lemon wedges."),
                               Instruction(number: 3,
                                            title: "Chill and Serve:",
                                            description: "Chill the smörgåstårta for a few hours before serving as a savory cake."),
                           ],
                           difficulty: 1,
                           time: 120,
                           favourite: false,
                           calories: "220 Kcal",
                           carbs: "20 carbs",
                           servings: 8,
                           description: "A unique Swedish dish that resembles a sandwich cake, made with layers of bread, seafood, and creamy fillings."
                       ),
                   ]
               ),
     //THAILAND
        Country(name: "Thailand", imageName: "thailand", Recipes:
                 [Recipe(name: "Pan Thai", imageName: "panthai",
                         
                   ingredient:
                     [
                         Ingredient(name: "Rice noodles", weight: "125g", imageName: "ricenoodles"),
                         Ingredient(name: "Lime juice", weight: "3 tbsp", imageName: "lime"),
                         Ingredient(name: "Cayenne pepper", weight: "1/2 tsb", imageName: "cayennepepper"),
                         Ingredient(name: "Light Muscovado sugar", weight: "2 tsp", imageName: "muscovadosugar"),
                         Ingredient(name: "Fish sauce", weight: "2 tbsp", imageName: "fishsauce"),
                         Ingredient(name: "Tiger prawn", weight: "200g", imageName: "tigerprawn"),
                         Ingredient(name: "Spring onion", weight: "4", imageName: "springonion"),
                         Ingredient(name: "Bean Sprout", weight: "140 g", imageName: "beansprout"),
                         Ingredient(name: "Salted peanuts", weight: "25 g", imageName: "saltedpeanuts"),
                         Ingredient(name: "Coriander leaves", weight: "Small handful", imageName: "corianderleaves")
                 
                     ],
                 instruction:
                     [
                 Instruction(number: 1,
                             title: "Boil the Noodles:",
                             description: "Put the noodles in a large heatproof bowl, pour boiling water over them and leave for 4 minutes, then drain and refresh under cold running water."),
                 Instruction(number: 2,
                             title: "Prepare the Sauce:",
                             description: "Put the lime juice, cayenne, sugar and fish sauce in a bowl and mix well. Have all the other ingredients ready by the cooker."),
                 Instruction(number: 3,
                             title: "Combine all ingrediets:",
                             description: "Heat the oil and fry the prawns until warmed through. Add the spring onions and noodles and toss around."),
                 Instruction(number: 4,
                             title: "Lime-infused Finish: ",
                             description: "Tip in the lime juice mixture, then stir in the beansprouts and half the peanuts and coriander. Cook for 1 minute until everything is heated through."),
                 Instruction(number: 5,
                             title: "Plated:",
                             description: "Pile into a large dish, scatter with the rest of the peanuts and coriander, and serve with lime wedges and sweet chilli sauce.")
                     ],
                 difficulty: 0,
                 time: 30,
                 favourite: false,
                 calories: "531 Kcal",
                 carbs: "62 carbs",
                 servings: 2,
                 description: "Almost a national dish of Thailand, Mary Cadogan's simplified take makes it easy to shop for - and very authentic tasting."
                         
               ),
                  Recipe(name: "Tom Kha Gai", imageName: "tomkhagai",
                         ingredient: [
                             Ingredient(name: "2 boneless", weight: "About 225g", imageName: "chickenbreasts"),
                             Ingredient(name: "Coconut milk", weight: "400 ml", imageName: "coconutmilk"),
                             Ingredient(name: "Chicken broth", weight: "2 cups", imageName: "chickenbroth"),
                             Ingredient(name: "Slices of galangal", weight: "3-4", imageName: "slicesofgalangal"),
                             Ingredient(name: "Kaffir lime leaves", weight: "3-4", imageName: "leaveskaffir"),
                             Ingredient(name: "Stalks of lemongrass", weight: "2-3", imageName: "stalkslemongrass"),
                             Ingredient(name: "Red chili", weight: "2-3 slices", imageName: "redchilli"),
                             Ingredient(name: "Shiitake mushrooms", weight: "200 g", imageName: "shiitakemushrooms"),
                             Ingredient(name: "Fish sauce", weight: "2 tbsp", imageName: "fishsauce"),
                             Ingredient(name: "Lime juice", weight: "2 tbsp", imageName: "lime"),
                             Ingredient(name: "Sugar", weight: "1 tbsp", imageName: "sugar"),
                             Ingredient(name: "Fresh cilantro leaves", weight: "To taste", imageName: "corianderleaves"),
                             Ingredient(name: "Salt", weight: "To taste", imageName: "salt")
                         ],
                         
                         instruction: [
                             Instruction(number: 1,
                                         title: "Thai Coconut Soup Base:",
                                         description: "In a large soup pot, bring the coconut milk and chicken broth to a boil."),
                             Instruction(number: 2,
                                         title: "Thai Coconut Soup Base pt.2:",
                                         description: "Add the galangal (or ginger), kaffir lime leaves, and lemongrass. Let it simmer for about 5 minutes to allow the flavors to infuse."),
                             Instruction(number: 3,
                                         title: "Cooking the Chicken in the Soup:",
                                         description: "Add the sliced chicken to the pot and cook until the chicken is thoroughly cooked, which should take about 5-7 minutes."),
                             Instruction(number: 4,
                                         title: "Adding Mushrooms and Chili:",
                                         description: "Add the mushrooms and red chili slices and cook for an additional 3-5 minutes, or until the mushrooms are tender."),
                             Instruction(number: 5,
                                         title: "Seasoning:",
                                         description: "Stir in the fish sauce, lime juice, and sugar. Mix well and taste, adjusting the flavors by adding salt if necessary."),
                             Instruction(number: 6,
                                         title: "Straining Aromatics:",
                                         description: "Remove the galangal, kaffir lime leaves, and lemongrass stalks from the soup."),
                             Instruction(number: 7,
                                         title: "Serving with Cilantro Garnish:",
                                         description: "Serve the Tom Kha Gai hot, garnished with fresh cilantro leaves.")
                         ],
                         difficulty: 0,
                         time: 30,
                         favourite: false,
                         calories: "300 kcla",
                         carbs: "15 carbs",
                         servings: 2,
                         description: "A Thai coconut soup with chicken, infused with aromatic herbs—sweet, tangy, and utterly satisfying."
                        ),
                  
                  Recipe(name: "Pad See Ew", imageName: "padseeew",
                         ingredient: [
                             Ingredient(name: "Wide rice noodles", weight: "225g", imageName: "ricenoodles"),
                             Ingredient(name: "Vegatable oil", weight: "2 tbsp", imageName: "oil"),
                             Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                             Ingredient(name: "Sliced chicken breast ", weight: "115 g", imageName: "slicedchickenbreast"),
                             Ingredient(name: "Kaffir lime leaves", weight: "3-4", imageName: "leaveskaffir"),
                             Ingredient(name: "Egg", weight: "2", imageName: "eggs"),
                             Ingredient(name: "Chinese broccoli", weight: "1 cup", imageName: "chinesebroccoli"),
                             Ingredient(name: "Dark soy sauce", weight: "2 tbsp", imageName: "darksoysauce"),
                             Ingredient(name: "Light soy sauce", weight: "1 tbsp", imageName: "lightsoysauce"),
                             Ingredient(name: "Oyster sauce", weight: "1 tbsp", imageName: "oystersauce"),
                             Ingredient(name: "Sugar", weight: "1/2 tbsp", imageName: "sugar"),
                             Ingredient(name: "White pepper", weight: "A pinch", imageName: "whitepepper"),
                             Ingredient(name: "Red chili flakes", weight: "To taste", imageName: "redchilli"),
                             Ingredient(name: "Chopped green onions", weight: "To taste", imageName: "greenonions"),
                             Ingredient(name: "Lime wedges", weight: "To taste", imageName: "lime")
                         ],
                         
                         instruction: [
                             Instruction(number: 1,
                                         title: "Prepare the Rice Noodles:",
                                         description: "If your rice noodles are not already separated, cook them according to the package instructions, then rinse them under cold water to prevent sticking. Set aside."),
                             Instruction(number: 2,
                                         title: "Heat the Oil and Garlic:",
                                         description: "In a wok or large skillet, heat the vegetable oil over medium-high heat. Add the minced garlic and stir-fry for about 30 seconds until fragrant."),
                             Instruction(number: 3,
                                         title: "Cook the Chicken:",
                                         description: "Add the sliced chicken and cook until it's no longer pink, which should take about 2-3 minutes."),
                             Instruction(number: 4,
                                         title: "Scramble the Eggs:",
                                         description: "Add the Chinese broccoli (or broccoli florets) to the wok and stir-fry for a few minutes until they are tender-crisp and bright green."),
                             Instruction(number: 5,
                                         title: "Add the Broccoli:",
                                         description: "Remove the galangal, kaffir lime leaves, and lemongrass stalks from the soup."),
                             Instruction(number: 6,
                                         title: "Sauce and Noodles:",
                                         description: "Add the cooked rice noodles to the wok and pour the dark soy sauce, light soy sauce, oyster sauce, sugar, and white pepper over the noodles. "),
                             Instruction(number: 7,
                                         title: "Noodle Perfection:",
                                         description: "Toss everything together until the noodles are well-coated and evenly browned."),
                             Instruction(number: 8,
                                         title: "Spice it Up (Optional):",
                                         description: "If you like some heat, you can add red chili flakes at this stage to your preferred level of spiciness."),
                             Instruction(number: 9,
                                         title: "Taste and Adjusts:",
                                         description: "Taste the dish and adjust the seasoning if needed with more soy sauce or sugar."),
                             Instruction(number: 10,
                                         title: "Serve:",
                                         description: "Serve hot, garnished with chopped green onions and lime wedges on the side.")
                         ],
                         difficulty: 1,
                         time: 30,
                         favourite: false,
                         calories: "300-600 Kcla",
                         carbs: "50 carbs",
                         servings: 2,
                         description: "Thai stir-fried noodles, a perfect blend of wide rice noodles, soy sauce, and tender veggies for a quick and tasty dish."
                        ),
                  
                  Recipe(name: "Khanom Tom", imageName: "khanomtom",
                         ingredient: [
                             Ingredient(name: "Glutinous rice", weight: "1 cup", imageName: "ricenoodles"),
                             Ingredient(name: "Mung bean paste", weight: "1/2 cup", imageName: "mungbeanpaste"),
                             Ingredient(name: "Shredded coconut", weight: "1/2 cups", imageName: "shreddedcoconut"),
                             Ingredient(name: "Sugar", weight: "1/4 cup", imageName: "sugar"),
                             Ingredient(name: "Salt", weight: "1/4 tbsp", imageName: "salt"),
                             Ingredient(name: "Sesame seeds", weight: "To taste", imageName: "sesameseeds"),
                             Ingredient(name: "Banana leaves", weight: "To taste", imageName: "bananaleaves")
                             ],
                         
                         instruction: [
                             Instruction(number: 1,
                                         title: "Prepare the Mung Bean Paste Filling:",
                                         description: "In a saucepan, combine the mung bean paste, 1/4 cup shredded coconut, 1/4 cup granulated sugar, and 1/4 teaspoon salt. "),
                             Instruction(number: 2,
                                         title: "Mung Bean Paste Filling pt.2:",
                                         description: "Cook over low heat, stirring constantly, until the mixture thickens and becomes a cohesive paste. Let it cool."),
                             Instruction(number: 3,
                                         title: "Cook the Glutinous Rice:",
                                         description: "Rinse the glutinous rice in cold water until the water runs clear. Then, soak the rice in enough water to cover it for at least 2 hours or overnight."),
                             Instruction(number: 4,
                                         title: "Cook the Glutinous Rice pt.2:",
                                         description: "Drain the rice, then steam it for about 20-25 minutes until it's tender."),
                             Instruction(number: 5,
                                         title: "Shape the Rice Balls:",
                                         description: "Take a small amount of sticky rice, flatten it in your palm, and place a teaspoon of the mung bean paste in the center."),
                             Instruction(number: 5,
                                         title: "Shape the Rice Balls pt.2:",
                                         description: "Enclose the paste with the rice and shape it into a ball about the size of a walnut. Repeat for the remaining rice and filling."),
                             Instruction(number: 7,
                                         title: "Wrap the Rice Balls:",
                                         description: "Wrap each rice ball in a piece of banana leaf or parchment paper and secure it with a piece of string or kitchen twine."),
                             Instruction(number: 8,
                                         title: "Cook the Rice Balls:",
                                         description: "ring a large pot of water to a boil. Add the wrapped rice balls and cook for about 10-15 minutes until they float to the surface. Remove and let them cool."),
                             Instruction(number: 9,
                                         title: "Coat with Coconut:",
                                         description: "Roll the cooked rice balls in the remaining shredded coconut, ensuring they are well coated."),
                             Instruction(number: 10,
                                         title: "Garnish (Optional):",
                                         description: "Optionally, you can sprinkle some toasted sesame seeds on the coated rice balls for added flavor and presentation.")
                         ],
                         difficulty: 0,
                         time: 15,
                         favourite: false,
                         calories: "100 Kcla",
                         carbs: "20 carbs",
                         servings: 2,
                         description: "Thai coconut dumplings with a sweet filling, wrapped in a chewy, translucent skin, offering a delightful bite-sized treat."
                        )
             ]
           ),
     //USA
        Country(name:"USA",imageName:"usa",
              
             Recipes:[
                
                Recipe(name: "Filet Mignon", imageName: "filetmignonn", ingredient:
                    [
                        Ingredient(name: "Filet Mignon Steaks", weight: "4 x 200g", imageName: "filetmignon", locations: [Location(name: "Supermarket 1, 67 Via Napoli", coordinate: CLLocationCoordinate2D(latitude: 40.819555, longitude: 14.144561))]),
                        Ingredient(name: "Red Wine", weight: "300ml", imageName: "redwine", locations: [Location(name: "Supermarket 1, Via Spiaggia Romana", coordinate: CLLocationCoordinate2D(latitude: 40.831048, longitude: 14.050110))]),
                        Ingredient(name: "Shallots", weight: "2", imageName: "shallots"),
                        Ingredient(name: "Butter", weight: "2 tbsp", imageName: "butter"),
                        Ingredient(name: "Olive Oil", weight: "2 tbsp", imageName: "oil"),
                        Ingredient(name: "Beef Stock", weight: "200ml", imageName: "beefstock"),
                        Ingredient(name: "Fresh Thyme", weight: "3 sprigs", imageName: "thyme"),
                        Ingredient(name: "Salt", weight: "1 tsp", imageName: "salt"),
                        Ingredient(name: "Black Pepper", weight: "1/2 tsp", imageName: "blackpepper"),
                    ],
                    instruction:
                    [
                        Instruction(number: 1,
                                     title: "Sear the Steaks:",
                                     description: "Season the filet mignon with salt and pepper. Heat olive oil in a skillet and sear the steaks until browned on both sides. Remove from the pan and keep warm."),
                        Instruction(number: 2,
                                     title: "Make the Red Wine Reduction:",
                                     description: "In the same skillet, add shallots and cook until softened. Pour in red wine and beef stock. Simmer, scraping up any browned bits from the pan. Reduce the liquid by half."),
                        Instruction(number: 3,
                                     title: "Finish the Sauce:",
                                     description: "Stir in fresh thyme and whisk in butter to create a rich and glossy sauce. Season with salt and pepper."),
                        Instruction(number: 4,
                                     title: "Serve:",
                                     description: "Plate the filet mignon and drizzle with the red wine reduction. Garnish with fresh thyme sprigs."),
                    ],
                    difficulty: 1,
                    time: 60,
                    favourite: false,
                    calories: "450 Kcal",
                    carbs: "6 carbs",
                    servings: 4,
                    description: "An elegant and flavorful dish featuring perfectly seared filet mignon steaks with a luxurious red wine reduction sauce."
                ),
                Recipe(name: "Macaroni and Cheese", imageName: "macandcheese", ingredient:
                    [
                        Ingredient(name: "Macaroni", weight: "200g", imageName: "macaroni"),
                        Ingredient(name: "Cheddar Cheese", weight: "150g", imageName: "cheddar"),
                        Ingredient(name: "Milk", weight: "200ml", imageName: "milk"),
                        Ingredient(name: "Butter", weight: "50g", imageName: "butter"),
                        Ingredient(name: "Flour", weight: "2 tbsp", imageName: "all-purposeflour"),
                        Ingredient(name: "Salt", weight: "1/2 tsp", imageName: "salt"),
                    ],
                    instruction:
                    [
                        Instruction(number: 1,
                                     title: "Cook the Macaroni:",
                                     description: "Boil the macaroni until al dente, then drain and set aside."),
                        Instruction(number: 2,
                                     title: "Prepare the Cheese Sauce:",
                                     description: "Make a cheese sauce by melting butter, adding flour, and stirring in milk and cheese."),
                        Instruction(number: 3,
                                     title: "Combine and Bake:",
                                     description: "Mix the cooked macaroni and cheese sauce, then bake until golden and bubbly."),
                        Instruction(number: 4,
                                     title: "Serve:",
                                     description: "Serve macaroni and cheese hot and creamy."),
                    ],
                    difficulty: 1,
                    time: 60,
                    favourite: false,
                    calories: "500 Kcal",
                    carbs: "40 carbs",
                    servings: 4,
                    description: "A comforting American dish of macaroni pasta in a creamy cheddar cheese sauce."
                ),
                Recipe(name: "Barbecue Ribs", imageName: "ribsb", ingredient:
                    [
                        Ingredient(name: "Pork Ribs", weight: "1 kg", imageName: "ribs"),
                        Ingredient(name: "Barbecue Sauce", weight: "300ml", imageName: "bbqsauce"),
                        Ingredient(name: "Dry Rub", weight: "to taste", imageName: "dryrub"),
                        Ingredient(name: "Salt", weight: "1 tsp", imageName: "salt"),
                    ],
                    instruction:
                    [
                        Instruction(number: 1,
                                     title: "Prep the Ribs:",
                                     description: "Season the ribs with a dry rub and salt, then let them marinate for a few hours."),
                        Instruction(number: 2,
                                     title: "Grill or Smoke:",
                                     description: "Grill or smoke the ribs over low heat, basting with barbecue sauce."),
                        Instruction(number: 3,
                                     title: "Serve:",
                                     description: "Serve barbecue ribs with extra sauce on the side."),
                    ],
                    difficulty: 1,
                    time: 120,
                    favourite: false,
                    calories: "600 Kcal",
                    carbs: "15 carbs",
                    servings: 4,
                    description: "Tender and flavorful American barbecue ribs with a smoky, tangy barbecue sauce."
                ),
                Recipe(name: "Apple Pie", imageName: "applepie", ingredient:
                    [
                        Ingredient(name: "Apples", weight: "6", imageName: "apples"),
                        Ingredient(name: "Pie Crust", weight: "2", imageName: "piecrust"),
                        Ingredient(name: "Sugar", weight: "150g", imageName: "sugar"),
                        Ingredient(name: "Cinnamon", weight: "2 tsp", imageName: "cinnamon"),
                        Ingredient(name: "Butter", weight: "2 tbsp", imageName: "butter"),
                    ],
                    instruction:
                    [
                        Instruction(number: 1,
                                     title: "Prepare the Filling:",
                                     description: "Peel, core, and slice the apples. Toss with sugar and cinnamon."),
                        Instruction(number: 2,
                                     title: "Line the Pie Dish:",
                                     description: "Line a pie dish with pie crust and add the apple filling."),
                        Instruction(number: 3,
                                     title: "Top and Bake:",
                                     description: "Cover with another pie crust, crimp the edges, and bake until golden."),
                        Instruction(number: 4,
                                     title: "Serve:",
                                     description: "Serve apple pie warm with a scoop of ice cream."),
                    ],
                    difficulty: 1,
                    time: 60,
                    favourite: false,
                    calories: "350 Kcal",
                    carbs: "45 carbs",
                    servings: 8,
                    description: "A classic American dessert with sweet, spiced apples in a flaky pie crust."
                ),
                Recipe(name: "Clam Chowder", imageName: "clamchowder", ingredient:
                    [
                        Ingredient(name: "Clams", weight: "500g", imageName: "clams"),
                        Ingredient(name: "Potatoes", weight: "400g", imageName: "potatoes"),
                        Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                        Ingredient(name: "Bacon", weight: "100g", imageName: "bacon"),
                        Ingredient(name: "Heavy Cream", weight: "250ml", imageName: "cream"),
                        Ingredient(name: "Butter", weight: "2 tbsp", imageName: "butter"),
                    ],
                    instruction:
                    [
                        Instruction(number: 1,
                                     title: "Prepare the Clams:",
                                     description: "Steam clams and remove the meat from the shells. Save the broth."),
                        Instruction(number: 2,
                                     title: "Cook Bacon and Veggies:",
                                     description: "Cook bacon, then sauté onions and potatoes in bacon fat."),
                        Instruction(number: 3,
                                     title: "Add Clams and Broth:",
                                     description: "Add clams, clam broth, and heavy cream to the pot."),
                        Instruction(number: 4,
                                     title: "Simmer and Serve:",
                                     description: "Simmer clam chowder until potatoes are tender and serve with buttered bread."),
                    ],
                    difficulty: 1,
                    time: 60,
                    favourite: false,
                    calories: "400 Kcal",
                    carbs: "25 carbs",
                    servings: 6,
                    description: "A rich and creamy American soup loaded with tender clams, potatoes, and smoky bacon."
                ),

                ]
             ),

    ]

    
