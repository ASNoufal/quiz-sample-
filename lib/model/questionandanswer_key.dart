import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionKey extends StatelessWidget {
  const QuestionKey({
    super.key,
    required this.answerkey,
    required this.onTap,
  });
  final String answerkey;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(148, 19, 17, 20),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
      ),
      onPressed: onTap,
      child: Text(
        answerkey,
        textAlign: TextAlign.center,
        style: GoogleFonts.acme(color: Colors.white),
      ),
    );
  }
}
