/*
  Intro
  - language used to make multi-platform apps
  - statically typed -> cannot change types later


\\\\\\\\\\\\\\\\\\\\\\\\\\\

  Run Dart Code
  - Method 1: 
    # https://dart.dev/get-dart/archive
      -> download sdk -> zip file 
      -> extract and setup path 
    # dart app.dart

  - Method 2:
    # https://dartpad.dev/
    -> run dart code without installing dart  


\\\\\\\\\\\\\\\\\\\\\\\\\\\

  Basics
  - final: runtime constant
    -> we want to use final if we don't want it to appear in compile time
  - const: compile time constant


*/

void main() {
  var name = "mario";
  print(name);

  final age = 22; // runtime constant
  print(age);

  const isOpen = true; // compile time constant
  print(isOpen);

  print(age + 10); // 32
  print(age % 10); // 2
  print(age.runtimeType); // int
  print("character name is $name"); // just need $ for variable
  // print("character name is ${person.name}"); // for object property like this -> use {}
}
