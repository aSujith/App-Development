import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_task.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Book details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 350,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        "Originally published on \n                             -1894")),
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
                            builder: (context) =>  SecondTask(),
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
