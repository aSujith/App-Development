import 'package:flutter/material.dart';

class SlideTransition1 extends StatefulWidget {
  const SlideTransition1({super.key});

  @override
  State<SlideTransition1> createState() => _SlideTransition1State();
}

class _SlideTransition1State extends State<SlideTransition1>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0, 0.1),
    end: Offset(0, -0.1),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Task4-\"Slide Transition\" ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Center(
          child: Container(
        height: 600,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: SlideTransition(
            position: _offsetAnimation,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                  height: 30,
                  width: 30,
                  child: const Icon(Icons.favorite,size: 150,
                  color: Colors.red,)),
            )),
      )),
    );
  }
}
