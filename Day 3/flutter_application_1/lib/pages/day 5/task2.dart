import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%205/task3.dart';

class Day5task2 extends StatelessWidget {
  const Day5task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Elevated Button",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple[500],
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text("3rd task"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Day5task3(),
                ),
              );
            },
          ),
        ));
  }
}
