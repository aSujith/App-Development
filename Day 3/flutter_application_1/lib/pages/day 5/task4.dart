import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first_task.dart';

class Day5task4 extends StatelessWidget {
  const Day5task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Images",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[500],
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const SizedBox(
            height: 200,
            width: 350,
            child: Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg')),
          ),
          const SizedBox(
            height: 200,
            width: 350,
            child: Image(
              image: AssetImage('images/image2.jpg'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context); // This line will close the drawer.

                  // Then, navigate to the SecondTask screen.
                  // Using Future.delayed to allow the pop animation to complete before navigating.
                  Future.delayed(Duration.zero, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirstTask(),
                      ),
                    );
                  });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: const Center(
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // This centers the row contents horizontally
                  children: [
                    Icon(
                      Icons.home, // The home icon
                      color: Colors.black,
                    ),
                    SizedBox(
                        width:
                            5), // Provides space between the icon and the text
                    Text(
                      "H o m e",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
