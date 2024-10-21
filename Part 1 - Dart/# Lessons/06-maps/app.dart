/*
  Maps


*/

void main() {
  var players = {}; // type annotation
  players[1] = "mario";
  players[2] = "luigi";
  print(players);
  print(players.runtimeType); // _Map<dynamic, dynamic>

  Map<int, String> characters = {1: "mario", 2: "luigi"};
  print(characters);

  Map<String, String> planets = {
    "first": "earth",
    "second": "mars",
    "third": "venus"
  };
  planets["first"] = "moon"; // update
  planets["forth"] = "jupiter"; // add
  print(planets);
  print(planets["first"]); // moon

  // check if key exists
  print(planets.containsKey("first")); // true

  // remove
  planets.remove("first");

  print(planets.keys); // (second, third, forth)
  print(planets.values); // (mars, venus, jupiter)

  planets.forEach((key, value) => print("$key -> $value"));
}
