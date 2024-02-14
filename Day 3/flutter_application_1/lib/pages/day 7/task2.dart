import 'dart:math';

import 'package:flutter/material.dart';

class Day7Task2 extends StatefulWidget {
  const Day7Task2({super.key});

  @override
  State<Day7Task2> createState() => _Day7Task2State();
}

class _Day7Task2State extends State<Day7Task2> {
  @override
  Widget build(BuildContext context) {
    TableRow tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: Text("Content 1"),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text("Content 2"),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text("Content 3"),
      ),
    ]);

    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Day 7- Task 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              width: 350,
              height: 650,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: ListView(

                  // padding: const EdgeInsets.all(10),
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.pink[100],
                      child: const Center(child: FlowMenu()),
                    ),
                    Container(
                        height: 150,
                        width: 300,
                        color: Colors.pink[200],
                        child: GridView.builder(
                            itemCount: 12,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) => Container(
                                  color: Colors.pink[600],
                                  margin: const EdgeInsets.all(1),
                                ))),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.pink[300],
                      child: Table(
                        border: TableBorder.all(),
                        defaultColumnWidth: const FixedColumnWidth(1),
                        children: <TableRow>[tableRow, tableRow, tableRow],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.pink[400],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                            child: Wrap(
                          spacing: 1,
                          runSpacing: 2,
                          children: List.generate(
                              10,
                              (index) => const Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.orangeAccent,
                                    child: Icon(Icons.person),
                                  ),
                                  label: Text("Contacts"))),
                        )),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.pink[500],
                    ),
                  ]),
            ),
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
          )
        ],
      ),
    );
  }
}

class FlowMenu extends StatefulWidget {
  const FlowMenu({super.key});

  @override
  State<FlowMenu> createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: RawMaterialButton(
        fillColor: Colors.blue,
        splashColor: const Color.fromARGB(255, 207, 172, 68),
        shape: const CircleBorder(
            side: BorderSide(strokeAlign: sqrt1_2, color: Colors.white)),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          menuAnimation.status == AnimationStatus.completed
              ? menuAnimation.reverse()
              : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children:
          menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}
