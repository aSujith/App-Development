import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%208/task2.dart';
import 'package:flutter_application_1/widget.dart';

class Day8Task1 extends StatefulWidget {
  const Day8Task1({super.key});

  @override
  State<Day8Task1> createState() => _Day8Task1State();
}

class _Day8Task1State extends State<Day8Task1> {
  @override
  Widget build(BuildContext context) {
    return defaultWidget(
      title: 'Day 8',
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Day8Task2(),
            ));
      },
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 225,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('images/mountain.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 225,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: <Widget>[
                    const Image(
                      image: AssetImage('images/mountain.jpg'),
                      fit: BoxFit.fill,
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 225,
              width: 150,
              color: Colors.black,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  width: double.infinity,
                  height:125 ,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            Container(
              height: 225,
              width: 150,
              color: Colors.purple[300],
            )
          ],
        )
      ]),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
@override
Path getClip(Size size){return Path()
..lineTo(0, size.height)
..quadraticBezierTo(size.width / 3, size.height-20, size.width / 2, size.height-10)
..lineTo(size.width, 0);




}
@override
bool shouldReclip(covariant CustomClipper<Path> oldClipper){

  return false;
}



}