# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Drink.create(name: 'Manhattan', description: 'Cocktail made with whiskey, sweet vermouth, and bitters.')
Drink.create(name: 'Moscow Mule', description: 'Cocktail made with vodka, spicy ginger beer, and lime juice, garnished with a slice of lime.')

Ingredient.create(name:'Whiskey', unit: 'ounce')
Ingredient.create(name:'Vodka', unit: 'ounce')
Ingredient.create(name:'Tequila', unit: 'ounce')
Ingredient.create(name:'Gin', unit: 'ounce')
Ingredient.create(name:'Rum', unit: 'ounce')
Ingredient.create(name:'Scotch', unit: 'ounce')
Ingredient.create(name:'Bourbon', unit: 'ounce')
Ingredient.create(name:'Cognac', unit: 'ounce')
Ingredient.create(name:'Sweet Vermouth', unit: 'ounce')
Ingredient.create(name:'Ginger Beer', unit: 'cup')
Ingredient.create(name:'Bitters', unit: 'dash')
Ingredient.create(name:'Lime Juice', unit: 'squeeze')
Ingredient.create(name:'Lime', unit: 'wedge')
Ingredient.create(name:'Lemon', unit: 'wedge')
Ingredient.create(name:'Mint', unit: 'sprig')
Ingredient.create(name:'Water', unit: 'ounce')
Ingredient.create(name:'Seltzer', unit: 'ounce')
Ingredient.create(name:'Soda', unit: 'ounce')
Ingredient.create(name:'Sour Mix', unit: 'ounce')
Ingredient.create(name:'Salt', unit: 'dash')
Ingredient.create(name:'Cocktail Cherry', unit: '')
Ingredient.create(name:'Orange peel', unit: '')

# Manhattan recipe
DrinkIngredient.create(drink_id: 1, ingredient_id: 1)
DrinkIngredient.create(drink_id: 1, ingredient_id: 1)
DrinkIngredient.create(drink_id: 1, ingredient_id: 1)
DrinkIngredient.create(drink_id: 1, ingredient_id: 1)
DrinkIngredient.create(drink_id: 1, ingredient_id: 1)
DrinkIngredient.create(drink_id: 1, ingredient_id: 9)
DrinkIngredient.create(drink_id: 1, ingredient_id: 11)
DrinkIngredient.create(drink_id: 1, ingredient_id: 21)
DrinkIngredient.create(drink_id: 1, ingredient_id: 22)

# Moscow Mule recipe
DrinkIngredient.create(drink_id: 2, ingredient_id: 2)
DrinkIngredient.create(drink_id: 2, ingredient_id: 2)
DrinkIngredient.create(drink_id: 2, ingredient_id: 2)
DrinkIngredient.create(drink_id: 2, ingredient_id: 10)
DrinkIngredient.create(drink_id: 2, ingredient_id: 12)
DrinkIngredient.create(drink_id: 2, ingredient_id: 13)


Step.create(name: 'Stir ingredients', length_of_time:30)
Step.create(name: 'Strain into glass', length_of_time:30)
Step.create(name: 'Garnish', length_of_time:5)
Step.create(name: 'Pour liquor', length_of_time: 10)
Step.create(name: 'Pour mix', length_of_time:10)
Step.create(name: 'Slice lime', length_of_time:30)
Step.create(name: 'Muddle mint', length_of_time:30)
Step.create(name: 'Shake', length_of_time:30)
Step.create(name: 'Blend', length_of_time:60)
Step.create(name: 'Pour blended mix', length_of_time:10)
Step.create(name: 'Serve over ice', length_of_time:10)
Step.create(name: 'Pour ingredients into shaker', length_of_time:10)

# Manhattan steps
DrinkStep.create(drink_id: 1, step_id: 1)
DrinkStep.create(drink_id: 1, step_id: 11)
DrinkStep.create(drink_id: 1, step_id: 3)

#Moscow Mule steps
DrinkStep.create(drink_id: 2, step_id: 12)
DrinkStep.create(drink_id: 2, step_id: 8)
DrinkStep.create(drink_id: 2, step_id: 11)
DrinkStep.create(drink_id: 2, step_id: 6)
DrinkStep.create(drink_id: 2, step_id: 3)


Equipment.create(name: 'Glass')
Equipment.create(name: 'Shaker')
Equipment.create(name: 'Blender')
Equipment.create(name: 'Strainer')
Equipment.create(name: 'Muddler')
Equipment.create(name: 'Stir spoon')
Equipment.create(name: 'Jigger')
Equipment.create(name: 'Knife')

# Manhattan equipment
DrinkEquipment.create(drink_id:1, equipment_id: 1)
DrinkEquipment.create(drink_id:1, equipment_id: 2)
DrinkEquipment.create(drink_id:1, equipment_id: 7)
DrinkEquipment.create(drink_id:1, equipment_id: 8)
DrinkEquipment.create(drink_id:1, equipment_id: 4)

#Moscow Mule Equipment
DrinkEquipment.create(drink_id:2, equipment_id: 1)
DrinkEquipment.create(drink_id:2, equipment_id: 2)
DrinkEquipment.create(drink_id:2, equipment_id: 8)
DrinkEquipment.create(drink_id:2, equipment_id: 7)


Tag.create(name: 'Cocktail')
Tag.create(name: 'Fruity')
Tag.create(name: 'Spicy')
Tag.create(name: 'Dry')
Tag.create(name: 'Light')
Tag.create(name: 'Heavy')

#Manhattan tag
DrinkTag.create(drink_id: 1, tag_id: 1)
#Moscow Mule tag
DrinkTag.create(drink_id: 2, tag_id: 3)
DrinkTag.create(drink_id: 2, tag_id: 5)
