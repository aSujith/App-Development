import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage('images/wallpaper.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),

            Center(
              child: SizedBox(
                height: 650,
                width: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Opacity(
                        opacity: 0.9,
                        child: Container(
                          width: 330,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.cyan[200],
                            
                            
                          ),
                          
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 330,
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      color: Colors.white,
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.phone_android,
                                            size: 30,
                                          ),
                                          // Icon(Icons.bolt_outlined,size: 15,),
                                          Text(
                                            "90%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Stack(
                                children: [
                                  ClipOval(
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      color: Colors.white,
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.headphones_outlined,
                                            
                                            size: 30,
                                          ),
                                          Icon(Icons.bolt_outlined,size: 15,),
                                          Text(
                                            "90%",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: ClipOval(
                                child: Container(
                                    width: 80, height: 80, color: Colors.white),
                              ),
                            ),
                            Center(
                              child: ClipOval(
                                child: Container(
                                    width: 80, height: 80, color: Colors.white),
                              ),
                            )
                          ]),
                    )
                    // Container(
                    //     width: 330,
                    //     height: 250,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.deepPurple[200],
                    //     )),
                  ],
                ),
              ),
            )

            //
          ],
        ),
      ),
    );
  }
}
