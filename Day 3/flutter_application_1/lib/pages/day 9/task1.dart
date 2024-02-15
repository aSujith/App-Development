// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%209/task2.dart';
import 'package:flutter_application_1/widget.dart';

class Day9Task1 extends StatefulWidget {
  const Day9Task1({super.key});

  @override
  State<Day9Task1> createState() => _Day9Task1State();
}

class _Day9Task1State extends State<Day9Task1> {
  @override
  Widget build(BuildContext context) {
    return defaultWidget(
      title: 'Day 9 - "Task 1"',
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Day9Task2(),
            ));
      },
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.deepPurple[100 * (index % 9)],
                  child: Text('Item ${index + 1}'),
                );
              },
              childCount: 50,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400.0,
                mainAxisExtent: 70,
                crossAxisSpacing: 1,
                childAspectRatio: 4),
          )
        ],
      ),
    );
  }
}
