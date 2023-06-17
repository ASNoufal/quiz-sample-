import 'package:adv_la/model/questionandanswer_key.dart';
import 'package:adv_la/model/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentquestionindex = 0;

  void nextquestion(String answer) {
    widget.onselectedanswer(answer);

    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = question[currentquestionindex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentquestion.questions,
              style: GoogleFonts.abrilFatface(
                  color: const Color.fromARGB(255, 227, 135, 212)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentquestion.getshuffleanswer().map(
              (e) {
                return QuestionKey(
                  answerkey: e,
                  onTap: () {
                    nextquestion(e);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
