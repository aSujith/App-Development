import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day6/task2.dart';

class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});

  @override
  State<MyWidget1> createState() => _MyWidget1State();
}

class _MyWidget1State extends State<MyWidget1> {
  bool selected = true;
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    AnimatedAlign(
                        alignment: selected
                            ? Alignment.topLeft
                            : Alignment.bottomRight,
                        duration: const Duration(seconds: 1),
                        curve: Curves.elasticOut,
                        child: const Image(
                          image:  AssetImage('images/pngwing.com.png'),
                        )),
                    const Center(
                        child: Text(
                      "Tap the Screen",
                      style: TextStyle(fontSize: 25),
                    ))
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                // Using pushReplacement to avoid stacking pages.
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedList1(),
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
                  "Animated List ->",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
