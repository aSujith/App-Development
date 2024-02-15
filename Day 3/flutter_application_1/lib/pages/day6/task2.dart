import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day6/task3.dart';

class AnimatedList1 extends StatefulWidget {
  const AnimatedList1({super.key});

  @override
  State<AnimatedList1> createState() => _AnimatedList1State();
}

class _AnimatedList1State extends State<AnimatedList1> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItems() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(milliseconds: 300),
    );
  }

  // late final AnimationController _controller = AnimationController(
  //   duration: const Duration(seconds: 2),
  //   vsync: this,
  // )..repeat(reverse: true);
  // late final Animation<Offset> _offsetAnimation = Tween<Offset>(
  //   begin: Offset.zero,
  //   end: const Offset(1.5, 0.0),
  // ).animate(CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.elasticIn,
  // ));
  void _removeItems(int index) {
    _key.currentState!.removeItem(
      index,
      (context, animation) => ScaleTransition(
        scale: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(149, 117, 205, 1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Task2-\"Animated List\" ",
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
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Column(children: [
                const SizedBox(height: 10),
                IconButton(
                  onPressed: _addItems,
                  icon: const Icon(Icons.add),
                ),
                Expanded(
                    child: AnimatedList(
                  key: _key,
                  initialItemCount: 0,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (context, index, animation) {
                    return ScaleTransition(
                      // sizeFactor: animation,
                      scale: animation,
                      child: Card(
                        elevation: 4,
                        margin: const EdgeInsets.all(10),
                        color: Colors.orangeAccent,
                        child: ListTile(
                          title: Text(
                            _items[
                                index], // Directly accessing _items[index] here is fine since this widget isn't const.
                            style: const TextStyle(fontSize: 20),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              _removeItems(index);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ))
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FadeTransition1(),
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
      ),
    );
  }
}
