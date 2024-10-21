/*
  Control Flow


*/

void main() {
  List<int> scores = [10, 20, 30, 40, 50];

  // for (int i = 0; i < scores.length; i++) {
  //   print(scores[i]);
  // }
  // for (int score in scores) {
  //   if (score > 40) {
  //     print("Score is greater than 40: $score");
  //   } else {
  //     continue;
  //   }
  // }

  // # Filter
  for (int score in scores.where((s) => s > 20)) {
    print(score);
  }
}
