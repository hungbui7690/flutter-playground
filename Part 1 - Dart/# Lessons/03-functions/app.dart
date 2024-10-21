/*
  Functions


*/

void main() {
  final greet = greeting("mario", 32);
  print(greet);

  sayHi("luigi");

  final fullName =
      getFullName(firstName: "david", lastName: "stone"); // named parameters
  print(fullName);
}

// No type annotation for parameters -> will cause unintended errors
greeting(name, age) {
  return "hello $name, your age is $age";
}

// Params with type annotation
sayHi(String name) {
  print("hi $name");
}

// Return type annotation + optional parameter
String call(String? name) {
  return "hello $name";
}

// Named Parameters -> {} -> when we use Named Params, we need to mark them as optional or required
String getFullName({String? firstName, required String lastName}) {
  return "$firstName $lastName";
}
