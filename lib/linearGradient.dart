import 'package:adv_la/model/questions.dart';
import 'package:adv_la/questions_screen.dart';
import 'package:adv_la/quiz.dart';
import 'package:adv_la/result_page.dart';
import 'package:flutter/material.dart';

class LinearGradiented extends StatefulWidget {
  const LinearGradiented(this.color1, this.color2, {super.key});

  final color1;
  final color2;

  @override
  State<LinearGradiented> createState() => _LinearGradientedState();
}

class _LinearGradientedState extends State<LinearGradiented> {
  var activepage = 'StartScreen';
  List<String> selectedanswer = [];

  void nextpage() {
    setState(() {
      activepage = 'question_Screen';
    });
  }

  void chooseanswer(String answer) {
    selectedanswer.add(answer);
    if (selectedanswer.length == question.length) {
      setState(() {
        activepage = 'Result_screeen';
      });
    }
  }

  void restart() {
    selectedanswer = [];
    setState(() {
      activepage = 'question_Screen';
    });
  }

  @override
  Widget build(context) {
    Widget active = Quiz(nextpage);
    if (activepage == 'question_Screen') {
      active = QuestionsScreen(onselectedanswer: chooseanswer);
    }

    if (activepage == "Result_screeen") {
      active = Resultpage(
        onanswer: selectedanswer,
        questionpage: restart,
      );
    }

    if (activepage == 'Resatrtpage') {
      active = Resultpage(onanswer: selectedanswer, questionpage: restart);
    }
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            widget.color1,
            widget.color2,
          ]),
        ),
        child: active);
  }
}
