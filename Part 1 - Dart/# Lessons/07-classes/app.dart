/*
  Classes


*/

// title, price, format() -> string
class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title -> $price";
  }
}

void main() {
  var noodles = MenuItem("noodles", 10.0);
  print(noodles.format());

  var pizza = MenuItem("pizza", 15.0);
  print(pizza.format());
}
