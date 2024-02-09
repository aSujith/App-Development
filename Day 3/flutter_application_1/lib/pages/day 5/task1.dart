import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%205/task2.dart';

class Day5task1 extends StatelessWidget {
  const Day5task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "AppBar",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple[500],
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              // Close the drawer.
              Navigator.pop(context);

              // Wait for a very short duration before navigating to give the drawer time to start closing.
              // This is a compromise to avoid buffering while still preventing potential navigation issues.
              Future.delayed(const Duration(milliseconds: 10), () {
                Navigator.pushReplacement(
                  // Using pushReplacement to avoid stacking pages.
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Day5task2(),
                  ),
                );
              });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                  child: Text(
                "Next Task",
                style: TextStyle(fontSize: 30),
              )),
            ),
          ),
        ));
  }
}
