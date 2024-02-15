import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%205/task1.dart';
import 'package:flutter_application_1/pages/day%207/task1.dart';
import 'package:flutter_application_1/pages/day%208/task1.dart';
import 'package:flutter_application_1/pages/day%209/task1.dart';
import 'package:flutter_application_1/pages/day10/task1.dart';
import 'package:flutter_application_1/pages/day6/task1.dart';
import 'package:flutter_application_1/pages/second_task.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Book details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[50],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Center(
                  child: Text(
                'Tasks',
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
            ),
            ListTile(
              title: const Text('Day 5'),
              onTap: () {
                // Close the drawer first
                Navigator.pop(context); // This line will close the drawer.

                // Then, navigate to the SecondTask screen.
                // Using Future.delayed to allow the pop animation to complete before navigating.
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day5task1(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              title: const Text('Day 6'),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyWidget1(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              title: const Text('Day 7'),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day7Task1(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              title: const Text('Day 8'),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day8Task1(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              title: const Text('Day 9'),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day9Task1(),
                    ),
                  );
                });
              },
            ),
            ListTile(
              title: const Text('Day 10'),
              onTap: () {
                Navigator.pop(context);
                Future.delayed(Duration.zero, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day10Task1(),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 350,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(25)),
          child: ListView(
            padding: const EdgeInsets.all( 30),

              // mainAxisAli?gnment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  alignment: Alignment.topCenter,
                  child: const Image(
                    image: NetworkImage(
                        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT6Edw_nuyMpoyg29x_5lORE1edduiRCKUOsZS_x1EruWrvjyhb'),
                  ),
                ),
                Container(
                    height: 50,
                    width: 250,
                    alignment: Alignment.topCenter,
                    child: const Center(
                        child: Text(
                      "The Jungle book...",
                      style: TextStyle(fontSize: 30, fontFamily: 'newfont'),
                    ))),
                Container(
                    height: 100,
                    width: 250,
                    // color: Colors.red[50],
                    alignment: Alignment.topCenter,
                    child: const Center(
                        child: Text(
                      " written by \n   -Rudyard Kipling",
                      style: TextStyle(fontSize: 30),
                    ))),
                Container(
                    height: 100,
                    width: 250,
                    // color: Colors.red[50],
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "Originally published on \n-1894",
                      textAlign: TextAlign.right,
                    )),
                Container(
                    height: 80,
                    width: 280,
                    // color: Colors.red[50],
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      child: const Text("2nd Task"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondTask(),
                          ),
                        );
                      },
                    )),
              ]),
        ),
      ),
    );
  }
}
