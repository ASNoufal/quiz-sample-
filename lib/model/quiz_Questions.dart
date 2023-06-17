class QuizQuestions {
  QuizQuestions(this.questions, this.answer);
  String questions;
  List<String> answer;

  List<String> getshuffleanswer() {
    final ans = answer;
    ans.shuffle();
    return ans;
  }
}
