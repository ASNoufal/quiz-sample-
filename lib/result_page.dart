import 'package:adv_la/answersummary.dart';
import 'package:adv_la/model/questions.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  const Resultpage(
      {super.key, required this.onanswer, required this.questionpage});
  final List<String> onanswer;
  final void Function() questionpage;

  List<Map<String, Object>> totalanswer() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < onanswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': question[i],
        'selected_answer': onanswer[i],
        'correct_answer': question[i].answer[0],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summary1 = totalanswer();
    final totalquestion = onanswer.length;
    final correctanswertotal = summary1.where((data) {
      return data['selected_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctanswertotal out of $totalquestion in the result!",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            AnswerSummary(
              summary1,
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.restart_alt),
              onPressed: questionpage,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 67, 13, 77)),
              label: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
