import 'package:adv_la/model/quiz_Questions.dart';
import 'package:flutter/material.dart';

// class AnswerSummary extends StatelessWidget {
//   const AnswerSummary(this.summaryData, {super.key});
//   final List<Map<String, Object>> summaryData;
//   @override
//   Widget build(context) {
//     return Column(
//         children: summaryData.map(
//       (data) {
//         return Row(
//           children: [
//             Text(((data['question_index'] as int) + 1).toString()),
//             Column(
//               children: [
//                 Text(data['question'] as String),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Text(data['selected_answer'] as String),
//                 Text(data['correct_answer'] as String),
//               ],
//             )
//           ],
//         );
//       },
//     ).toList());
//   }
// }
// maxmillON code showing error;

class AnswerSummary extends StatelessWidget {
  const AnswerSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final questionIndex = (data['question_index'] as int) + 1;
              final question = data['question'] as QuizQuestions;
              final selectedAnswer = data['selected_answer'] as String;
              final correctAnswer = data['correct_answer'] as String;

              return SizedBox(
                width: 330,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: selectedAnswer == correctAnswer
                            ? Colors.green
                            : Colors.red,
                        child: Text(
                          questionIndex.toString(),
                        )),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            question.questions,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            selectedAnswer,
                            style: const TextStyle(color: Colors.pink),
                          ),
                          Text(
                            correctAnswer,
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
