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
    var imageName: String=""
    var locations: [Location] = []
}

struct Location: Identifiable
{
    var id: UUID = UUID()
    var name: String
    
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
    //Italy
    [Country(name:"Italy",imageName:"italy",
             Recipes:[Recipe(name: "Carbonara",imageName: "carbonara",ingredient:
                          [
                            Ingredient(name: "Rigatoni", weight: "200g", imageName: "rigatoni"),
                            Ingredient(name: "Jowls", weight: "100g", imageName: "jowls"),
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
                                         title: "Boil the Pasta:",
                                         description: "Bring a large pot of salted water to a boil. Cook the spaghetti according to package instructions until to the tooth."),
                            Instruction(number: 2,
                                         title: "Prepare the Sauce:",
                                         description: "In a bowl, whisk together the eggs, grated Pecorino Romano cheese, and a generous amount of freshly ground black pepper. Set aside."),
                            Instruction(number: 3,
                                         title: "Cook the Guanciale or Pancetta:",
                                         description: "In a skillet over medium heat, cook the diced guanciale or pancetta until it becomes crispy. If you like, you can add a clove of garlic for flavor and remove it later."),
                            Instruction(number: 4,
                                         title: "Combine the Pasta and Sauce:",
                                         description: "Once the pasta is cooked, reserve a cup of pasta cooking water, and then drain the spaghetti. Add the drained pasta to the skillet with the guanciale or pancetta. Toss to combine."),
                            Instruction(number: 5,
                                         title: "Add the Sauce:",
                                         description: "Remove the skillet from heat and quickly pour the egg and cheese mixture over the pasta. Toss quickly and thoroughly, allowing the heat from the pasta to cook the eggs and create a creamy sauce. If needed, add a bit of reserved pasta water to achieve the desired consistency."),
                            Instruction(number: 6,
                                         title: "Serve:",
                                         description: "Plate the pasta carbonara and sprinkle with additional Pecorino Romano and black pepper if desired"),
                            Instruction(number: 7,
                                         title: "Optional:",
                                         description: "Drizzle with a bit of olive oil before serving for added richness."),
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
                            Ingredient(name: "unsalted butter", weight: "2 tablespoons", imageName: "tablespoonsun"),
                            Ingredient(name: "olive oil", weight: "2 tablespoons", imageName: "tablespoonsolive"),
                            Ingredient(name: "Parmesan cheese", weight: "1/2 cup", imageName: "permesanchees"),
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
                           time: 40,
                           favourite: false,
                           calories: "300 Kcal",
                           carbs: "28.30g carbs",
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
                            Ingredient(name: "Vanilla extract", weight: "1/2 teaspoon", imageName: "vanillaextract"),
                            Ingredient(name: "Ladyfinger cookies (savoiardi)", weight: "8 to 10", imageName: "savoiardi"),
                            Ingredient(name: "Cocoa powder", weight: "for dusting", imageName: "cocoapowder"),
                            Ingredient(name: "Chocolate shavings", weight: "for garnish", imageName: "chocolate shavings")
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
                                         title: "Combine Mascarpone and Whipped Cream:",
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
                           calories: "300-400 Kcal",
                           carbs: "30-50g carbs",
                           servings: 2,
                           description: "A popular Italian dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa."
                          ),
                    
             Recipe(name: "Bruschetta", imageName: "bruschetta", ingredient:
                        [
                            Ingredient(name: "Bread", weight: "4 slices ", imageName: "bread"),
                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Basil", weight: "1/4 cup", imageName: "basil"),
                            Ingredient(name: "Olive Oil", weight: "2 tablespoons ", imageName: "tablespoonolive"),
                            Ingredient(name: "Black pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Balsamic glaze ", weight: "for drizzling", imageName: "balsamicglaze")
                        ],
                           instruction:
                        [
                            Instruction(number: 1,
                                         title: "Preheat the Oven:",
                                         description: "Preheat your oven to broil or about 400°F (200°C)."),
                            Instruction(number: 2,
                                         title: "Toast the Bread:",
                                         description: "Place the bread slices on a baking sheet and toast them in the oven until they are golden brown on both sides. This can be done by broiling for a couple of minutes on each side or baking in a preheated oven."),
                            Instruction(number: 3,
                                         title: "Rub with Garlic:",
                                         description: "While the bread is still warm, rub one side of each slice with the peeled garlic cloves. This imparts a subtle garlic flavor."),
                            Instruction(number: 4,
                                         title: "Prepare Tomato Mixture:",
                                         description: "In a bowl, combine the diced tomatoes, chopped basil, and olive oil. Season with salt and black pepper to taste. Mix well."),
                            Instruction(number: 5,
                                         title: "Top the Bread:",
                                         description: "Spoon the tomato mixture onto the garlic-rubbed side of each bread slice."),
                            Instruction(number: 6,
                                         title: "Optional Garnishes:",
                                         description: "Drizzle a little extra-virgin olive oil over the top, and if desired, add a balsamic glaze for extra flavor."),
                            Instruction(number: 7,
                                         title: "Serve:",
                                         description: "Serve the bruschetta immediately while the bread is still a bit warm."),
                           ],
                           difficulty: 0,
                           time: 15,
                           favourite: false,
                           calories: "450-510 Kcal",
                           carbs: "41-50g carbs",
                           servings: 2,
                           description: "Grilled bread rubbed with garlic, topped with diced tomatoes, fresh basil, and a drizzle of olive oil."
                          )
                 ]
                )
    ,
     //Mexico
     Country(name: "Mexico",
                 imageName: "mexico",
                 Recipes:
                [
                    Recipe(name: "Tacos", imageName: "tacos",
                     ingredient:
                     [
                        Ingredient(name: "Ground beef", weight: "225g", imageName: "groundbeef"),
                        Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                        Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                        Ingredient(name: "Taco seasoning", weight: "1 tablespoon", imageName: "tacoseasoning"),
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
                        Instruction(number: 1, title: "Cook the Beef Filling:", description: "Bring a large pot of salted water to a boil. Cook the spaghetti according to package instructions until to the tooth."),
                        Instruction(number: 2, title: "Prepare Toppings:", description: "In a bowl, whisk together the eggs, grated Pecorino Romano cheese, and a generous amount of freshly ground black pepper. Set aside."),
                        Instruction(number: 3, title: "Warm Tortillas:", description: "In a skillet over medium heat, cook the diced guanciale or pancetta until it becomes crispy. If you like, you can add a clove of garlic for flavor and remove it later."),
                        Instruction(number: 4, title: "Assemble Tacos:", description: "Once the pasta is cooked, reserve a cup of pasta cooking water, and then drain the spaghetti. Add the drained pasta to the skillet with the guanciale or pancetta. Toss to combine."),
                        Instruction(number: 5, title: "Serve:", description: "Remove the skillet from heat and quickly pour the egg and cheese mixture over the pasta. Toss quickly and thoroughly, allowing the heat from the pasta to cook the eggs and create a creamy sauce. If needed, add a bit of reserved pasta water to achieve the desired consistency."),
                        Instruction(number: 6, title: " ", description: "Feel free to customize the ingredients based on your taste preferences. You can also explore other protein options like chicken, pork, or vegetarian fillings. Adjust the toppings according to your liking. Enjoy your tacos!"),
                        ],
                           difficulty: 0,
                           time: 40,
                           favourite: false,
                           calories: "850-950 Kcal",
                           carbs: "90-120g carbs",
                           servings: 2,
                           description: "Tacos are perhaps the most iconic Mexican dish. They consist of small tortillas filled with various ingredients, such as seasoned meat (like carne asada or carnitas), beans, cheese, salsa, and guacamole."
                          ),
                    Recipe(name: "Guacamole", imageName: "guacamole",
                        ingredient:
                        [
                            Ingredient(name: "Avocado", weight: "2", imageName: "avocado"),
                            Ingredient(name: "Lime", weight: "1", imageName: "limewedges"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Ground cumin", weight: "1/2 teaspoon", imageName: "groundcumin"),
                            Ingredient(name: "Cayenne pepper", weight: "1/2 teaspoon", imageName: "cayennepepper"),
                            Ingredient(name: "Lime wedges", weight: "2", imageName: "limewedges"),
                            Ingredient(name: "Onion", weight: "1", imageName: "onion"),
                            Ingredient(name: "Tomatoes", weight: "2", imageName: "tomatoes"),
                            Ingredient(name: "Cloves garlic", weight: "2", imageName: "garlic"),
                            Ingredient(name: "Fresh cilantro", weight: "2 teaspoon", imageName: "freshcilantro")
                            
                        ],
                           instruction:
                            [
                                Instruction(number: 1, title: "Prepare the Avocados:", description: "Cut the avocados in half and remove the pits. Scoop the flesh into a mixing bowl."),
                                Instruction(number: 2, title: "Mash the Avocados:", description: "Use a fork or potato masher to mash the avocados to your desired consistency. Some people prefer chunky guacamole, while others like it smoother."),
                                Instruction(number: 3, title: "Add Lime Juice:", description: "Squeeze the juice of one lime over the mashed avocados. Lime not only adds flavor but also helps prevent the guacamole from browning."),
                                Instruction(number: 4, title: "Season with Salt, Cumin, and Cayenne:", description: "Add salt, ground cumin, and cayenne pepper (if using) to the mashed avocados. Start with a small amount of salt and adjust to taste."),
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
                           carbs: "71g carbs",
                           servings: 2,
                           description: "A popular avocado-based dip made with mashed avocados, lime juice, onions, tomatoes, cilantro, and chili peppers. It's often served with tortilla chips or as a topping for tacos."
                          ),
                    Recipe(name: "Enchiladas",
                           imageName: "enchiladas",
                           ingredient: [
                            Ingredient(name: "Cooked shredded chicken", weight: "1 cup", imageName: "cookedshreddedchicken"),
                            Ingredient(name: "Black beans", weight: "1/2 cup", imageName: "blackbeans"),
                            Ingredient(name: "Corn kernels", weight: "1/2 cup", imageName: "cornkernels"),
                            Ingredient(name: "Bell peppers", weight: "1/2 cup", imageName: "bellpeppers"),
                            Ingredient(name: "Red onion", weight: "1/4 cup", imageName: "onion"),
                            Ingredient(name: "Ground cumin", weight: "1/2 teaspoon", imageName: "groundcumin"),
                            Ingredient(name: "Chili powder", weight: "1/2 teaspoon", imageName: "chilipowder"),
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
                                         description: "Warm the tortillas in the microwave or on a dry skillet to make them pliable. Place a portion of the filling mixture onto each tortilla, roll them up, and place them seam-side down in a baking dish."),
                            Instruction(number: 4,
                                         title: "Add Enchilada Sauce:",
                                         description: "Pour the enchilada sauce evenly over the rolled tortillas."),
                            Instruction(number: 5,
                                         title: "Add Cheese:",
                                         description: "Sprinkle shredded cheese over the top of the enchiladas."),
                            Instruction(number: 6,
                                         title: "Bake:",
                                         description: "Bake in the preheated oven for about 20 minutes or until the cheese is melted and bubbly."),
                            Instruction(number: 7,
                                         title: "Garnish and Serve:",
                                         description: "Remove from the oven and sprinkle chopped cilantro on top. Serve the enchiladas with sour cream if desired."),
                            Instruction(number: 8,
                                         title: " ",
                                         description: "This recipe is customizable, so feel free to adjust the filling ingredients or add additional toppings according to your preferences. Enjoy your chicken enchiladas!"),
                            ],
                           difficulty: 1,
                           time: 50,
                           favourite: false,
                           calories: "1295 Kcal",
                           carbs: "114g carbs",
                           servings: 2,
                           description: "Tortillas filled with meat (chicken, beef, or pork), rolled, and then topped with chili sauce and cheese before being baked. They are often served with sour cream and guacamole."
                          ),
                    Recipe(name: "Chiles Rellenos",
                           imageName: "chilesrellenos",
                           ingredient: [
                            Ingredient(name: "Poblano peppers", weight: "2", imageName: "poblanopeppers"),
                            Ingredient(name: "Shredded cheese ", weight: "1 cup", imageName: "shredded cheese"),
                            Ingredient(name: "Eggs", weight: "2", imageName: "eggs"),
                            Ingredient(name: "All-purpose flour", weight: "1/4 cup", imageName: "all-purposeflour"),
                            Ingredient(name: "Salt", weight: "to taste", imageName: "salt"),
                            Ingredient(name: "Pepper", weight: "to taste", imageName: "blackpepper"),
                            Ingredient(name: "Tomato sauce", weight: "1/4 cup", imageName: "tomatosauce"),
                            Ingredient(name: "Cloves garlic", weight: "1", imageName: "garlic"),
                            Ingredient(name: "Ground cumin", weight: "1/2 teaspoon", imageName: "groundcumin"),
                            Ingredient(name: "Vegetable oil", weight: "for frying", imageName: "oil"),
                            Ingredient(name: "Fresh cilantro", weight: "for garnish", imageName: "freshcilantro"),
                            Ingredient(name: "Sour cream", weight: "optional", imageName: "sourcream"),
                           ],
                           instruction: [
                            Instruction(number: 1,
                                         title: "Roast and Peel the Peppers:",
                                         description: "Roast the poblano peppers over an open flame or under the broiler until the skin is charred. Place the roasted peppers in a plastic bag and let them steam for about 10 minutes. This will make it easier to peel off the skin. Peel the charred skin off the peppers and make a small slit lengthwise to remove seeds."),
                            Instruction(number: 2,
                                         title: "Prepare the Filling:",
                                         description: "Stuff each poblano pepper with shredded cheese. You can use your fingers or a spoon to carefully fill the peppers."),
                            Instruction(number: 3,
                                         title: "Prepare the Batter:",
                                         description: "In a bowl, whisk the egg whites until stiff peaks form. In a separate bowl, whisk the egg yolks, then fold in the flour. Season with salt and pepper. Gently fold the egg yolk mixture into the whipped egg whites until combined."),
                            Instruction(number: 4,
                                         title: "Coat the Peppers:",
                                         description: "Dip each stuffed pepper into the batter, ensuring it's well-coated."),
                            Instruction(number: 5,
                                         title: "Fry the Chile Rellenos:",
                                         description: "In a deep skillet, heat vegetable oil over medium-high heat. Carefully place the coated peppers in the hot oil and fry until golden brown on all sides. This may take about 5-7 minutes."),
                            Instruction(number: 6,
                                         title: "Prepare the Sauce:",
                                         description: "In a separate saucepan, combine tomato sauce or crushed tomatoes, minced garlic, ground cumin, salt, and pepper. Simmer for a few minutes until heated through."),
                            Instruction(number: 7,
                                         title: "Serve:",
                                         description: "Plate the Chile Rellenos, pour the sauce over them, and garnish with chopped cilantro and a dollop of sour cream if desired."),
                            
                            ],
                           difficulty: 1,
                           time: 120,
                           favourite: false,
                           calories: "1010 Kcal",
                           carbs: "76,5 g carbs",
                           servings: 2,
                           description: "Large, mild chili peppers stuffed with cheese or meat, dipped in egg batter, and then fried until golden. They are typically served with tomato sauce."
                          ),
                    ]
                 ),
     
     
     //THAILAND
    
     Country (name: "Thailand", imageName: "thailand", Recipes:
                 [Recipe(name: "Pan Thai", imageName: "panthai",
                         
                   ingredient:
                     [
                         Ingredient(name: "Rice noodles", weight: "125g", imageName: "ricenoodles"),
                         Ingredient(name: "Lime juice", weight: "3 tbsp", imageName: "lime"),
                         Ingredient(name: "Cayenne pepper", weight: "1/2 tsb", imageName: "cayannepepper"),
                         Ingredient(name: "Light Muscovado sugar", weight: "2 tsp", imageName: "muscovadosugar"),
                         Ingredient(name: "Fish sauce", weight: "2 tbsp", imageName: "fishsauce"),
                         Ingredient(name: "Tiger prawn (cooked and peeled, tailes left on)", weight: "200g", imageName: "tigerprawn"),
                         Ingredient(name: "Spring onion (sliced)", weight: "4", imageName: "springonion"),
                         Ingredient(name: "Bean Sprout", weight: "140 g", imageName: "beansprout"),
                         Ingredient(name: "Salted peanuts (finely chopped)", weight: "25 g", imageName: "saltedpeanuts"),
                         Ingredient(name: "Coriander leaves", weight: "Small handful", imageName: "corianderleaves")
                 
                     ],
                 instruction:
                     [
                 Instruction(number: 1,
                             title: "Boil the Noodles:",
                             description: "Put the noodles in a large heatproof bowl, pour boiling water over them and leave for 4 minutes, then drain and refresh under cold running water."),
                 Instruction(number: 2,
                             title: "Prepare the Sauce:",
                             description: "Put the lime juice, cayenne, sugar and fish sauce in a bowl and mix well. Have all the other ingredients ready by the cooker.."),
                 Instruction(number: 3,
                             title: "Combine all ingrediets:",
                             description: "Heat the oil and fry the prawns until warmed through. Add the spring onions and noodles and toss around. Tip in the lime juice mixture, then stir in the beansprouts and half the peanuts and coriander. Cook for 1 minute until everything is heated through."),
                 Instruction(number: 4,
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
                             Ingredient(name: "2 boneless, skinless chicken breasts thinly sliced", weight: "About 225g", imageName: "chickenbreasts"),
                             Ingredient(name: "Coconut milk", weight: "400 ml", imageName: "coconutmilk"),
                             Ingredient(name: "Chicken broth", weight: "2 cups", imageName: "chickenbroth"),
                             Ingredient(name: "Slices of galangal", weight: "3-4", imageName: "chickenbroth"),
                             Ingredient(name: "Kaffir lime leaves, torn into pieces", weight: "3-4", imageName: "leaveskaffir"),
                             Ingredient(name: "Stalks of lemongrass, cut into 2-inch pieces and smashed", weight: "2-3", imageName: "stalkslemongrass"),
                             Ingredient(name: "Red chili", weight: "2-3 slices", imageName: "redchilli"),
                             Ingredient(name: "Shiitake mushrooms, sliced", weight: "200 g", imageName: "shiitakemushrooms"),
                             Ingredient(name: "Fish sauce", weight: "2 tbsp", imageName: "fishsauce"),
                             Ingredient(name: "Lime juice", weight: "2 tbsp", imageName: "lime"),
                             Ingredient(name: "Sugar", weight: "1 tbsp", imageName: "sugar"),
                             Ingredient(name: "Fresh cilantro leaves", weight: "To taste", imageName: "corianderleaves"),
                             Ingredient(name: "Salt", weight: "To taste", imageName: "salt")
                         ],
                         
                         instruction: [
                             Instruction(number: 1,
                                         title: "Preparation of the Thai Coconut Soup Base:",
                                         description: "In a large soup pot, bring the coconut milk and chicken broth to a boil. Add the galangal (or ginger), kaffir lime leaves, and lemongrass. Let it simmer for about 5 minutes to allow the flavors to infuse."),
                             Instruction(number: 2,
                                         title: "Cooking the Chicken in the Soup:",
                                         description: "Add the sliced chicken to the pot and cook until the chicken is thoroughly cooked, which should take about 5-7 minutes."),
                             Instruction(number: 3,
                                         title: "Adding Mushrooms and Chili to the Soup:",
                                         description: "Add the mushrooms and red chili slices and cook for an additional 3-5 minutes, or until the mushrooms are tender."),
                             Instruction(number: 4,
                                         title: "Seasoning and Final Flavour Adjustment:",
                                         description: "Stir in the fish sauce, lime juice, and sugar. Mix well and taste, adjusting the flavors by adding salt if necessary."),
                             Instruction(number: 5,
                                         title: "Straining Aromatics from the Soup:",
                                         description: "Remove the galangal, kaffir lime leaves, and lemongrass stalks from the soup."),
                             Instruction(number: 6,
                                         title: "Serving Tom Kha Gai with Cilantro Garnish:",
                                         description: "Serve the Tom Kha Gai hot, garnished with fresh cilantro leaves.")
                         ],
                         difficulty: 0,
                         time: 30,
                         favourite: false,
                         calories: "300 kcla",
                         carbs: "15 carbs",
                         servings: 2,
                         description: "This soup has a delightful balance of flavors with a mix of creamy coconut milk, the brightness of lime, and the savory umami from the fish sauce. Feel free to adjust the chili and other ingredients to suit your spice tolerance."
                        ),
                  
                  Recipe(name: "Pad See Ew", imageName: "padseeew",
                         ingredient: [
                             Ingredient(name: "Wide rice noodles", weight: "225g", imageName: "ricenoodles"),
                             Ingredient(name: "Vegatable oil", weight: "2 tbsp", imageName: "oil"),
                             Ingredient(name: "Cloves garlic, minced", weight: "2", imageName: "garlic"),
                             Ingredient(name: "Sliced chicken breast ", weight: "115 g", imageName: "chickenbreasts"),
                             Ingredient(name: "Kaffir lime leaves, torn into pieces", weight: "3-4", imageName: "leaveskaffir"),
                             Ingredient(name: "Egg", weight: "2", imageName: "eggs"),
                             Ingredient(name: "Chinese broccoli", weight: "1 cup", imageName: "chinesebroccoli"),
                             Ingredient(name: "Dark soy sauce", weight: "2 tbsp", imageName: "darksoysauce"),
                             Ingredient(name: "Light soy sauce", weight: "1 tbsp", imageName: "lightsoysauce"),
                             Ingredient(name: "Oyster sauce", weight: "1 tbsp", imageName: "oystersauce"),
                             Ingredient(name: "Sugar", weight: "1/2 tbsp", imageName: "sugar"),
                             Ingredient(name: "White pepper", weight: "A pinch", imageName: "whitepepper"),
                             Ingredient(name: "Red chili flakes", weight: "To taste", imageName: "redchilli"),
                             Ingredient(name: "Chopped green onions for garnish", weight: "To taste", imageName: "choppedgreenonions"),
                             Ingredient(name: "Lime wedges for serving", weight: "To taste", imageName: "lime")
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
                                         description: "Add the cooked rice noodles to the wok and pour the dark soy sauce, light soy sauce, oyster sauce, sugar, and white pepper over the noodles. Toss everything together until the noodles are well-coated and evenly browned."),
                             Instruction(number: 7,
                                         title: "Spice it Up (Optional):",
                                         description: "If you like some heat, you can add red chili flakes at this stage to your preferred level of spiciness."),
                             Instruction(number: 8,
                                         title: "Taste and Adjusts:",
                                         description: "Taste the dish and adjust the seasoning if needed with more soy sauce or sugar.."),
                             Instruction(number: 9,
                                         title: "Serve::",
                                         description: "Serve hot, garnished with chopped green onions and lime wedges on the side.")
                         ],
                         difficulty: 1,
                         time: 30,
                         favourite: false,
                         calories: "300-600 Kcla",
                         carbs: "50 carbs",
                         servings: 2,
                         description: "Pad See Ew is a popular Thai stir-fried noodle dish made with wide, flat rice noodles, meat (often chicken, beef, or shrimp), and vegetables. The dish is known for its sweet and savory flavor."
                        ),
                  
                  Recipe(name: "Khanom Tom", imageName: "khanomtom",
                         ingredient: [
                             Ingredient(name: "Glutinous rice", weight: "1 cup", imageName: "ricenoodles"),
                             Ingredient(name: "Mung bean paste", weight: "1/2 cup", imageName: "mungbeanpaste"),
                             Ingredient(name: "Shredded coconut", weight: "1/2 cups", imageName: "shreddedcoconut"),
                             Ingredient(name: "Sugar", weight: "1/4 cup", imageName: "sugar"),
                             Ingredient(name: "Salt", weight: "1/4 tbsp", imageName: "salt"),
                             Ingredient(name: "Sesame seeds, toasted", weight: "To taste", imageName: "sesameseeds"),
                             Ingredient(name: "Banana leaves", weight: "To taste", imageName: "bananaleaves")
                             ],
                         
                         instruction: [
                             Instruction(number: 1,
                                         title: "Prepare the Mung Bean Paste Filling::",
                                         description: "In a saucepan, combine the mung bean paste, 1/4 cup shredded coconut, 1/4 cup granulated sugar, and 1/4 teaspoon salt. Cook over low heat, stirring constantly, until the mixture thickens and becomes a cohesive paste. Let it cool."),
                             Instruction(number: 2,
                                         title: "Cook the Glutinous Rice:",
                                         description: "Rinse the glutinous rice in cold water until the water runs clear. Then, soak the rice in enough water to cover it for at least 2 hours or overnight. Drain the rice, then steam it for about 20-25 minutes until it's tender."),
                             Instruction(number: 3,
                                         title: "Shape the Rice Balls:",
                                         description: "ake a small amount of sticky rice, flatten it in your palm, and place a teaspoon of the mung bean paste in the center. Enclose the paste with the rice and shape it into a ball about the size of a walnut. Repeat for the remaining rice and filling."),
                             Instruction(number: 4,
                                         title: "Wrap the Rice Balls:",
                                         description: "Wrap each rice ball in a piece of banana leaf or parchment paper and secure it with a piece of string or kitchen twine."),
                             Instruction(number: 5,
                                         title: "Cook the Rice Balls:",
                                         description: "ring a large pot of water to a boil. Add the wrapped rice balls and cook for about 10-15 minutes until they float to the surface. Remove and let them cool."),
                             Instruction(number: 6,
                                         title: "Coat with Coconut:",
                                         description: "Roll the cooked rice balls in the remaining shredded coconut, ensuring they are well coated."),
                             Instruction(number: 7,
                                         title: "Garnish (Optional):",
                                         description: "Optionally, you can sprinkle some toasted sesame seeds on the coated rice balls for added flavor and presentation.")
                         ],
                         difficulty: 0,
                         time: 1,
                         favourite: false,
                         calories: "80-100 Kcla",
                         carbs: "15-20 carbs",
                         servings: 3,
                         description: "Khanom Tom, also known as 'Coconut-Covered Sticky Rice Balls', is a traditional Thai dessert made from glutinous rice balls filled with sweet mung bean paste and coated with shredded coconut."
                        )
             ]
           )
    ]


