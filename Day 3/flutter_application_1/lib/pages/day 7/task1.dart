import 'package:flutter/material.dart';

class Day7Task1 extends StatefulWidget {
  const Day7Task1({super.key});

  @override
  State<Day7Task1> createState() => _Day7Task1State();
}

class _Day7Task1State extends State<Day7Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Day 7- Task 1"),
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
              child: Column(children: [
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan[400],
                  ),
                  child: const Stack(children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.home,
                          size: 50,
                        )),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Align",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ]),
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan[100],
                  ),
                  child: Center(
                    child: Container(
                      height:100 ,
                      width: 200,
                      color: Colors.lightBlueAccent,
                      child: const Center(child: Text("Fitted Box",style: TextStyle(fontSize: 30),)),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan[200],
                  ),
                ),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan[300],
                  ),
                )
              ]),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const (),
                //   ),
                // );
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
