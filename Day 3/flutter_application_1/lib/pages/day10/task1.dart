import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart'; // Ensure this is the correct path.

class Day10Task1 extends StatefulWidget {
  const Day10Task1({super.key});

  @override
  State<Day10Task1> createState() => _Day10Task1State();
}

class _Day10Task1State extends State<Day10Task1> {
  // Initial theme mode is set to system's theme
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      // Toggle theme mode between light and dark
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.cyan[50],
          primaryColor: Colors.green[300],
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.grey[900],
          primaryColor: Colors.teal[700],
        ),
        themeMode: _themeMode, // Use the theme mode state variable
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: _themeMode == ThemeMode.dark
                ? Colors.teal[700]
                : Colors.teal[300],
            title: const Text("Task 1"),
            // Add a button in the AppBar to toggle the theme
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  icon: const Icon(Icons.brightness_6),
                  onPressed: _toggleTheme, // Call the toggle function
                ),
              )
            ],
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: currentHeight > 400
                      ? Colors.grey[800]
                      : Colors.grey[400]),
              child: Center(
                child: SizedBox(
                  width: 300, // Specify the width for the Card
                  height: 100, // Specify the height for the Card
                  child: Card(
                    color: _themeMode == ThemeMode.dark
                        ? Colors.teal[700]
                        : Colors.teal[300],
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(child: Text(currentHeight.toString())),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
