import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%207/task2.dart';

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
              child: ListView(children: [
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
                        child: Image(
                          width: 100,
                          image: AssetImage(
                            'images/pngwing.com.png',
                          ),
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
                    child: const FittedBox(
                      fit: BoxFit. fitHeight,
                      child: Image(
                        image: AssetImage('images/image2.jpg'),
                      ),
                      // child: const Image(image: AssetImage('images/image2.jpg'),
                    )),
                Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan[200],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 50, top: 30),
                      child: Text(
                        "Padding",
                        style: TextStyle(fontSize: 30),
                      ),
                    )),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.cyan[300],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Transform(
                          transform: Matrix4.skewX(0.3),
                          child: const Icon(
                            Icons.menu,
                            size: 50,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Transform",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  //
                ),
                Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyan[500],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.pink[300],
                        
                            child: const OverflowBox(
                              maxHeight: 200,
                              maxWidth: 200,
                              child: Center(
                                  child: FlutterLogo(
                                size: 150,
                              )),
                            ),
                            // child: const Center(child: Text("Cover me"),),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text("Overflow Box",style: TextStyle(fontSize: 30,),),
                        )
                      ],
                    ))
              ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Day7Task2 (),
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
