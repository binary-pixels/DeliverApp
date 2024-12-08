import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/1.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/2.png",
      price: 11.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeño", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whols",
      imagePath: "lib/images/burgers/3.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Hummus Spread", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "Add a splash of sunshine to your day with the Aloha Burger – where savory meets sweet in a taste of tropical bliss!",
      imagePath: "lib/images/burgers/4.png",
      price: 11.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Caesar Burger",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/burgers/5.png",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),

    // salad
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutions, and Caesar dressing.",
      imagePath: "lib/images/salads/1.png",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
      imagePath: "lib/images/salads/2.png",
      price: 11.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.99),
        Addon(name: "Grilled Shrimp", price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinos mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/3.png",
      price: 9.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Hummus Spread", price: 2.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Add a splash of sunshine to your day with the Aloha Burger – where savory meets sweet in a taste of tropical bliss!",
      imagePath: "lib/images/salads/4.png",
      price: 11.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/5.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),

    // sides
    Food(
      name: "Sweet Potato Fries",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/sides/1.png",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/sides/2.png",
      price: 11.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeño", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whols",
      imagePath: "lib/images/sides/3.png",
      price: 9.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Hummus Spread", price: 2.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Patato Fries",
      description:
          "Add a splash of sunshine to your day with the Aloha Burger – where savory meets sweet in a taste of tropical bliss!",
      imagePath: "lib/images/sides/4.png",
      price: 11.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/sides/5.png",
      price: 7.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/desserts/1.png",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/desserts/2.png",
      price: 11.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeño", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whols",
      imagePath: "lib/images/desserts/3.png",
      price: 9.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Hummus Spread", price: 2.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "Add a splash of sunshine to your day with the Aloha Burger – where savory meets sweet in a taste of tropical bliss!",
      imagePath: "lib/images/desserts/4.png",
      price: 11.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/desserts/5.png",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),

    // drinks
    Food(
      name: "Lemonade",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/drinks/1.png",
      price: 8.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/drinks/2.png",
      price: 11.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeño", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whols",
      imagePath: "lib/images/drinks/3.png",
      price: 9.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Hummus Spread", price: 2.99),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "Add a splash of sunshine to your day with the Aloha Burger – where savory meets sweet in a taste of tropical bliss!",
      imagePath: "lib/images/drinks/4.png",
      price: 11.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/drinks/5.png",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Spicy Mayo", price: 2.99),
      ],
    ),
  ];

  /** 

    GETTERS

   */

  List<Food> get menu => _menu;

  /** 
    
    OPERATIONS

  */

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart

  // clear cart

  /**
   
   HELPERS

   */

  // generate a receipt

  // format double value into money

  // format list of addons into a string
}
