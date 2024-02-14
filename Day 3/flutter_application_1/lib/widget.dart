import 'package:flutter/material.dart';

defaultWidget({String? title, Widget? body, dynamic onTap}) {
  return Scaffold(
    backgroundColor: Colors.lime,
    appBar: AppBar(
      centerTitle: true,
      title: Text(title!),
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
            child: body,
          ),
          GestureDetector(
            onTap: onTap,
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
