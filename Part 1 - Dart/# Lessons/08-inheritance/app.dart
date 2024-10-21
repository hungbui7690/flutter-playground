/*
  Inheritance


*/

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title -> $price";
  }
}

class Pizza extends MenuItem {
  List<String> toppings = [];
  // Pizza(this.toppings, String title, double price) : super(title, price); // Method 1
  Pizza(this.toppings, super.title, super.price); // Method 2
}

void main() {
  var noodles = MenuItem("noodles", 10.0);
  print(noodles.format());

  var pizza = Pizza(["pepperoni", "cheese", "mushrooms"], "pizza", 15.0);
  print(pizza.format());
}
