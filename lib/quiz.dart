import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.nextpagee, {super.key});

  final nextpagee;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(255, 125, 121, 121),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Learn the flutter fun way!",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: nextpagee,
            icon: const Icon(Icons.arrow_right_outlined),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
