/*
  Method Overriding
  - print(pizza) -> will call toString()



*/

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title -> $price";
  }

  // # without this -> Instance of 'MenuItem'
  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings = [];
  Pizza(this.toppings, super.title, super.price);

  // #
  @override
  String format() {
    return "$title -> \$$price -> ${toppings.join(", ")}";
  }

  @override
  String toString() {
    return 'Instance of Pizza: $title -> \$$price -> ${toppings.join(", ")}';
  }
}

void main() {
  var noodles = MenuItem("noodles", 10.0);
  print(noodles.format());

  var pizza = Pizza(["pepperoni", "cheese", "mushrooms"], "pizza", 15.0);
  print(pizza.format());

  print(pizza); // without override toString() -> Instance of 'Pizza'
  print(noodles); // without override toString() -> Instance of 'MenuItem'
}
