import 'package:flutter/material.dart';
class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Task1-\"Animated Align\" ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),);
  }
}