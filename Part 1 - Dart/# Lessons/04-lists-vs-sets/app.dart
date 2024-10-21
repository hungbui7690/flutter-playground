/*
  Lists & Sets


*/

void main() {
  // LIST
  // var numbers = [1, 2, 3, 4, 5];
  List<int> score = [10, 20, 30, 77, 88, 99, 111]; // type annotation
  score[0] = 50;
  // score[0] = "hello"; // error
  score.add(40);
  score.remove(20);
  score.removeLast();
  print(score.length);
  print(score[0]); // 50
  score.shuffle();
  print(score.indexOf(1)); // not found -> -1
  print(score);

  // SET
  // var namesSet = {"mario", "luigi"};
  Set<String> namesSet = {"mario", "luigi", "peach"};
  namesSet.add("mario");
  namesSet.remove("luigi");
  print(namesSet.length);
  print(namesSet);
}
