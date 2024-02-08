import 'package:flutter/material.dart';

// ignore: camel_case_types
class secondtask extends StatelessWidget {
  const secondtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter app",style: TextStyle(
          backgroundColor: Colors.deepPurple[500],
          
        ),),
      ),
    );
  }
}
