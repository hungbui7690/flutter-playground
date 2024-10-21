/*
  Generics


*/

// # Without Generics
// class Collection {
//   String name;
//   List data; // List<dynamic>

//   Collection(this.name, this.data);

//   String randomItem() {
//     data.shuffle();
//     return data[0];
//   }
// }

// Generic
class Collection<T> {
  T name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}

void main() {
  // var foods = Collection("foods", ["noodles", "pizza", "sushi"]); // without generics
  var foods = Collection<String>("foods", ["noodles", "pizza", "sushi"]);
  var random = foods.randomItem();

  print(random);
}
