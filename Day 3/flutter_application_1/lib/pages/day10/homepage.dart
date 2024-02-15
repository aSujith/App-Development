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
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              width: 100,
                                              height: 100,
                                              
                                              child: Image.network(
                                                'https://images.immediate.co.uk/production/volatile/sites/3/2023/12/Fortnite-Festival-songs-079f0e5.jpg?quality=90&resize=980,654',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Song1 ...\nsjylsdfsodnvofhgifgui",style: TextStyle(fontSize: 16),),
                                            Row(
                                            
                                              children: [
                                                Icon(Icons.skip_previous_rounded),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10,right: 10),
                                                  child: Icon(Icons.play_circle_fill),
                                                ),
                                                Icon(Icons.skip_next_rounded)
                                              ],

                                            )
                                          ],
                                        )
                                      ],
                                    )),
                                Expanded(
                                    child: Container(
                                  height: 150,
                                  color: Colors.blue,
                                ))
                              ],
                            ),
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
                                          Icon(
                                            Icons.bolt_outlined,
                                            size: 15,
                                          ),
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
