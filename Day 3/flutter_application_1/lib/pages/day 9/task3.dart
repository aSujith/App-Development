import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/day%209/task4.dart';
import 'package:flutter_application_1/widget.dart';

class Day9Task3 extends StatefulWidget {
  const Day9Task3({super.key});

  @override
  State<Day9Task3> createState() => _Day9Task3State();
}

class _Day9Task3State extends State<Day9Task3> {
  @override
  Widget build(BuildContext context) {
    return defaultWidget(
      title: 'Task 3',
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Day9Task4(),));
      },
      body: Center(
        child: RefreshIndicator(
          color: Colors.white,
          backgroundColor: Colors.blue,
          onRefresh: () async {
            return Future<void>.delayed(const Duration(seconds: 6));
          },
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.pink[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'List',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.green[100],
                  height: 600,
                  child: ListView.builder(
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return const ListTile(
                        title: Text('Items'),
                        
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
