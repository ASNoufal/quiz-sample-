import 'package:adv_la/linearGradient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: LinearGradiented(
            Color.fromARGB(255, 75, 14, 85), Color.fromARGB(255, 185, 68, 206)),
      ),
    );
  }
}
