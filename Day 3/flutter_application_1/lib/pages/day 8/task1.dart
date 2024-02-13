import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%208/task2.dart';

class Day8Task1 extends StatefulWidget {
  const Day8Task1({super.key});

  @override
  State<Day8Task1> createState() => _Day8Task1State();
}

class _Day8Task1State extends State<Day8Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Day 8 - Task 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 600,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 270,
                          width: 150,
                          color: Colors.pinkAccent,
                        ),
                        Container(
                          height: 270,
                          width: 150,
                          color: Colors.pinkAccent,
                        )
                      ],
                    )
                  ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Day8Task2(),
                  ),
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "Next Task ->",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
