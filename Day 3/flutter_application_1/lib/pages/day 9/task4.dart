import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';

class Day9Task4 extends StatefulWidget {
  const Day9Task4({super.key});

  @override
  State<Day9Task4> createState() => _Day9Task4State();
}

class _Day9Task4State extends State<Day9Task4> {
  @override
  Widget build(BuildContext context) 
  builder: (BuildContext context, BoxConstraints constraints)
  {
    return defaultWidget(title: 'Task 4',
    body:SizedBox(
              width: constraints.maxWidth / 2,
              // This vertical scroll view has primary set to true, so it is
              // using the PrimaryScrollController. On mobile platforms, the
              // PrimaryScrollController automatically attaches to vertical
              // ScrollViews, unlike on Desktop platforms, where the primary
              // parameter is required.
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                    primary: true,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          color: index.isEven
                              ? Colors.amberAccent
                              : Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 2 : Index $index'),
                          ));
                    }),
              )), );
  }
}