// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Day5task3 extends StatelessWidget {
  const Day5task3({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Icon",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Container(
        height: 300,
        width: 300,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
      ),
      
      );
  }
}