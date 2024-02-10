import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day6/task4.dart';

class FadeTransition1 extends StatefulWidget {
  const FadeTransition1({super.key});

  @override
  State<FadeTransition1> createState() => _FadeTransition1State();
}

class _FadeTransition1State extends State<FadeTransition1>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

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
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Task3-\"Fade Transition\" ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple[500],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                height: 600,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: FadeTransition(
                  opacity: _animation,
                  child: const FlutterLogo(size: 250),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SlideTransition1(),
                  ),
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "Fade Transition ->",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
