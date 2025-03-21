import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodly/models/cart_item.dart';

import 'food.dart';

class Restaurant  extends ChangeNotifier{

final List<Food> _menu = [
 //burgers
  Food(
    name: "Classic Cheeseburger", 
    description: "A juicy patty with melted cheddar,lettuce tomato, and a hint of onion and pickle.", 
    imagePath: "lib/images/burgers/cheese_burger.png", 
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
    description: "Smoky BBQ sauce,crispy bacon, and onion rings make this beef burger a savory deligt.", 
    imagePath: "lib/images/burgers/bbq_burger.png", 
    price: 10.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Grilled Onions", price: 0.99),
      Addon(name: "Jalapenos", price: 1.49),
      Addon(name: "Extra BBQ Sauce", price: 1.99),

    ],
    ),
  Food(
    name: "Veggie Burger", 
    description: "Veggie patty with avocado, lettuce, and tomato on a whole grain bun, served with sweet potato fries and tangy aioli.", 
    imagePath: "lib/images/burgers/vege_burger.png", 
    price: 9.49, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Vegan cheese", price: 0.99),
      Addon(name: "Grilled Mushrooms", price: 1.49),
      Addon(name: "Hummus Spread", price: 1.99),

    ],
    ),
  Food(
    name: "Aloha Burger", 
    description: "Beef patty with grilled pineapple, crispy bacon, Swiss cheese, and teriyaki sauce on a brioche bun, served with golden fries.", 
    imagePath: "lib/images/burgers/aloha_burger.png", 
    price: 8.99, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Teriyaki Glaze", price: 0.99),
      Addon(name: "Extra Pineapple", price: 0.99),
      Addon(name: "Bacon", price: 1.49),

    ],
    ),
  Food(
    name: "Blue Moon Burger", 
    description: "Beef patty with blue cheese, caramelized onions, bacon, and arugula on a brioche bun, served with seasoned fries.", 
    imagePath: "lib/images/burgers/bluemoon_burger.png", 
    price: 9.49, 
    category: FoodCategory.burgers, 
    availableAddons: [
      Addon(name: "Sauteed Mushrooms", price: 0.99),
      Addon(name: "Fried Egg", price: 1.49),
      Addon(name: "Spicu Mayo", price: 0.99),

    ],
    ),

 //salads

Food(
    name: "Caesar Salad", 
    description: "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing", 
    imagePath: "lib/images/salads/caeasar_salad.png", 
    price: 7.99, 
    category: FoodCategory.salads, 
    availableAddons: [
      Addon(name: "Grilled Chicken", price: 0.99),
      Addon(name: "Anchoives", price: 1.49),
      Addon(name: "Extra Parmesan", price: 0.99),

    ],
    ),

Food(
    name: "Greek Salad", 
    description: "Romaine lettuce, tomatoes, cucumbers, red onions, olives, feta, and Greek dressing, served with pita.", 
    imagePath: "lib/images/salads/greek_salad.png", 
    price: 8.49, 
    category: FoodCategory.salads, 
    availableAddons: [
      Addon(name: "Feta Cheese", price: 0.99),
      Addon(name: "Kalamata Olives", price: 1.49),
      Addon(name: "Grilled Shrimp", price: 1.99),

    ],
    ),

Food(
  name: "Quinoa Salad", 
  description: "Quinoa, spinach, cherry tomatoes, cucumbers, red onions, feta, and lemon vinaigrette.", 
  imagePath: "lib/images/salads/quinoa_salad.png", 
  price: 10.99, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Grilled Chicken", price: 2.99),
    Addon(name: "Avocado Slices", price: 1.49),
    Addon(name: "Extra Feta Cheese", price: 0.99),
  ],
),

Food(
  name: "Asian Sesame Salad", 
  description: "Romaine lettuce, carrots, mandarin oranges, sesame seeds, wonton strips, and sesame ginger dressing.", 
  imagePath: "lib/images/salads/asiansesame_salad.png", 
  price: 9.79, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Grilled Shrimp", price: 3.49),
    Addon(name: "Sesame-Crusted Tofu", price: 2.49),
    Addon(name: "Spicy Peanut Dressing", price: 0.99),
  ],
),

Food(
  name: "Southwest Chicken Salad", 
  description: "Grilled chicken, mixed greens, black beans, corn, tomatoes, cheese, tortilla strips, and chipotle ranch dressing.", 
  imagePath: "lib/images/salads/southweth_salad.png", 
  price: 11.49, 
  category: FoodCategory.salads, 
  availableAddons: [
    Addon(name: "Sliced Avocado", price: 1.99),
    Addon(name: "Jalapeños", price: 0.99),
    Addon(name: "Extra Chipotle Ranch", price: 0.79),
  ],
),


 //sides

Food(
  name: "Garlic Bread Side", 
  description: "Garlic butter baguette slices with parsley, served with marinara.", 
  imagePath: "lib/images/sides/garlic_bread_side.png", 
  price: 4.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "Extra Cheese", price: 1.49),
    Addon(name: "Truffle Oil Drizzle", price: 1.99),
    Addon(name: "Spicy Marinara Sauce", price: 0.99),
  ],
),

Food(
  name: "Loaded Fries Side", 
  description: "French fries with cheddar, bacon bits, and green onions, served with ranch.", 
  imagePath: "lib/images/sides/loadedfries_side.png", 
  price: 6.49, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "Extra Cheese", price: 1.29),
    Addon(name: "Jalapeños", price: 0.99),
    Addon(name: "BBQ Pulled Pork", price: 2.49),
  ],
),

Food(
  name: "Mac & Cheese Side", 
  description: "Mac and cheese with cheddar, mozzarella, and crispy breadcrumbs.", 
  imagePath: "lib/images/sides/mac_sides.png", 
  price: 5.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "Bacon Crumbles", price: 1.49),
    Addon(name: "Truffle Oil", price: 1.99),
    Addon(name: "Hot Sauce Drizzle", price: 0.79),
  ],
),

Food(
  name: "Onion Rings Side", 
  description: "Crispy battered onion rings, served with house-made dipping sauce.", 
  imagePath: "lib/images/sides/onion_rings.png", 
  price: 5.49, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "Chipotle Mayo", price: 0.99),
    Addon(name: "Extra Crispy Coating", price: 1.29),
    Addon(name: "Garlic Parmesan Seasoning", price: 1.19),
  ],
),

Food(
  name: "Sweet Potato Fries Side", 
  description: "Crispy sweet potato fries with cinnamon, served with honey mustard or spicy mayo.", 
  imagePath: "lib/images/sides/sweet_potato_side.png", 
  price: 5.99, 
  category: FoodCategory.sides, 
  availableAddons: [
    Addon(name: "Marshmallow Drizzle", price: 1.49),
    Addon(name: "Spicy Cajun Seasoning", price: 0.99),
    Addon(name: "Maple Syrup Dip", price: 1.29),
  ],
),


 //desserts

Food(
  name: "Apple Pie", 
  description: "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling", 
  imagePath: "lib/images/desserts/apple_pie.png", 
  price: 5.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Ice Cream", price: 1.49),
    Addon(name: "Caramel Drizzle", price: 1.29),
    Addon(name: "Whipped Cream", price: 0.79),
  ],
),

Food(
  name: "Cheesecake", 
  description: "Creamy cheescake on a graham cracker crust,with a berry compote", 
  imagePath: "lib/images/desserts/cheescake.png", 
  price: 6.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Chocolate Ganache", price: 1.49),
    Addon(name: "Fresh Berries", price: 1.29),
    Addon(name: "Caramel Drizzle", price: 1.19),
  ],
),

Food(
  name: "Chocolate Brownie", 
  description: "Rich and fudgy chocolate brownie, with chuncks of chocolate", 
  imagePath: "lib/images/desserts/chocolate-brownie.png", 
  price: 4.99, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Chocolate Sauce", price: 1.29),
    Addon(name: "Peanut Butter Swirl", price: 1.49),
    Addon(name: "Crushed Nuts", price: 0.99),
  ],
),

Food(
  name: "Pear Pie", 
  description: "Sweet pear filling in a buttery crust, served warm with cinnamon sugar.", 
  imagePath: "lib/images/desserts/pear_pie.png", 
  price: 5.49, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Vanilla Ice Cream", price: 1.49),
    Addon(name: "Caramel Sauce", price: 1.29),
    Addon(name: "Whipped Cream", price: 0.79),
  ],
),

Food(
  name: "Red Velvet Lava Cake", 
  description: "Red velvet cake with a molten chocolate center, served with vanilla ice cream and raspberry coulis.", 
  imagePath: "lib/images/desserts/red_velvet_lava_cake.png", 
  price: 7.49, 
  category: FoodCategory.desserts, 
  availableAddons: [
    Addon(name: "Extra Raspberry Coulis", price: 1.29),
    Addon(name: "Extra Ice Cream", price: 1.49),
    Addon(name: "Chocolate Shavings", price: 1.19),
  ],
),



 //drinks

Food(
  name: "Caramel Macchiato", 
  description: "Espresso, steamed milk, vanilla syrup, and caramel drizzle.", 
  imagePath: "lib/images/drinks/caramel_macchiato.png", 
  price: 4.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Extra Caramel Drizzle", price: 0.99),
    Addon(name: "Almond Milk", price: 1.29),
    Addon(name: "Espresso Shot", price: 0.99),
  ],
),

Food(
  name: "Iced Tea", 
  description: "Chilled iced tea in black, green, or herbal varieties.", 
  imagePath: "lib/images/drinks/iced_tea.png", 
  price: 2.99, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Lemon Slice", price: 0.29),
    Addon(name: "Mint Leaves", price: 0.49),
    Addon(name: "Peach Syrup", price: 0.99),
  ],
),

Food(
  name: "Mojito", 
  description: "Mint, lime juice, rum, soda water, and sugar, served on the rocks.", 
  imagePath: "lib/images/drinks/mojito.png", 
  price: 6.49, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Extra Mint", price: 0.79),
    Addon(name: "Mango Purée", price: 1.49),
    Addon(name: "Basil Leaves", price: 0.59),
  ],
),

Food(
  name: "Smoothie", 
  description: "Creamy fruit smoothie with yogurt and honey.", 
  imagePath: "lib/images/drinks/smoothie.png", 
  price: 5.49, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Protein Powder", price: 1.99),
    Addon(name: "Chia Seeds", price: 0.99),
    Addon(name: "Spinach", price: 0.79),
  ],
),

Food(
  name: "Lemonade", 
  description: "Classic lemonade with fresh lemons, water, and sugar, served chilled.", 
  imagePath: "lib/images/drinks/lemonades.png", 
  price: 3.49, 
  category: FoodCategory.drinks, 
  availableAddons: [
    Addon(name: "Lemon Slice", price: 0.29),
    Addon(name: "Mint Leaves", price: 0.49),
    Addon(name: "Honey", price: 0.79),
  ],
),




];

/*
G E T T E R S

*/

List<Food> get menu => _menu;

/*
O P E R A T I O N S

*/

//user cart
final List<CartItem> _cart = [];

// add to cart
void addToCart(Food food, List<Addon> selectedAddons){

  CartItem? cartItem = _cart.firstWhereOrNull((item){

    bool isSameFood = item.food == food;

    bool isSameAddons = 
      ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddons;
  });

  //if item already exists, increase it's quantity
  if(cartItem!= null){
    cartItem.quantity++;
  }
  else{
    _cart.add(
      CartItem(food: food, 
      selectedAddons: selectedAddons,
      ),
    );

  }
  notifyListeners();
}
// remove from cart

void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex!=1){
    if(_cart[cartIndex].quantity>1){

      _cart[cartIndex].quantity--;
    } else{
      _cart.removeAt(cartIndex);
    }

  }
  notifyListeners();

}


//get total price of cart

double getTotalPrice(){
  double total = 0.0;

  for(CartItem cartItem in _cart){

    double itemTotal = cartItem.food.price;
    for(Addon addon in cartItem.selectedAddons){
      itemTotal += addon.price;
    }
    total+= itemTotal * cartItem.quantity;

  }

  return total;
}


//get total number of items in cart

int getTotalItemCount(){

  int totalItemCount = 0;
  for(CartItem cartItem in _cart){
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}

//clear cart

void clearCart(){
  _cart.clear();
   notifyListeners();

}



/*
H E L P E R S 

//generate a receipt

//format double value into money

//format list of addons into a string summary



*/

}


