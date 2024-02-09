import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%205/task2.dart';

class Day5task1 extends StatelessWidget {
  const Day5task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "AppBar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Center(
        child: InkWell(
    onTap: () {
      Navigator.pop(context); // This line will close the drawer.
    
    // Then, navigate to the SecondTask screen.
    // Using Future.delayed to allow the pop animation to complete before navigating.
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Day5task2(),
        ),
      );
    });



     
    },
        child: Container(
         

          
          height: 50,
          width: 300,
         
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(25),
              ),
          child: const Center(child: Text("Next Task",style: TextStyle(
            fontSize: 30
          ),)),
        ),
      ),
    ));
  }
}
