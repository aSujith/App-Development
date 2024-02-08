import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
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
                      child: const Text("Originally published on \n                             -1894")),
                ]),
          ),
        ),
      ),
    );
  }
}
